require "spec_helper"
require "googleauth/service_account"
require "googleauth/impersonated_service_account"
require "openssl"

describe "Impersonated Credentials self-signed JWT propagation" do
  let(:impersonation_url) { "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/test@example.com:generateAccessToken" }

  it "propagates enable_self_signed_jwt from source credentials" do
    key = OpenSSL::PKey::RSA.new 2048
    cred_json = {
      private_key: key.to_pem,
      client_email: "source@example.com",
      type: "service_account"
    }

    base_creds = Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: StringIO.new(JSON.generate(cred_json)),
      enable_self_signed_jwt: true
    )

    impersonated_creds = Google::Auth::ImpersonatedServiceAccountCredentials.new(
      base_credentials: base_creds,
      impersonation_url: impersonation_url,
      scope: ["https://www.googleapis.com/auth/cloud-platform"]
    )

    # We expect the source credentials (which is the duplicate) to retain enable_self_signed_jwt?
    source_creds = impersonated_creds.instance_variable_get(:@source_credentials)
    expect(source_creds.enable_self_signed_jwt?).to be true

    # Mock the IAM request
    stub = stub_request(:post, impersonation_url).with do |request|
      auth_header = request.headers["Authorization"]
      auth_header && auth_header.start_with?("Bearer eyJ") # JWT tokens start with eyJ
    end.to_return(body: JSON.generate({ "accessToken" => "mock_token", "expireTime" => (Time.now + 3600).iso8601 }), status: 200)

    h = {}
    impersonated_creds.apply!(h)
    expect(h[:authorization]).to eq("Bearer mock_token")
    expect(stub).to have_been_requested
  end
end

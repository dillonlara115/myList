Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '438480572898894', '201b80ffea00a025421e9f05727e9a49', {:client_options => {:ca_file => '/etc/ssl/certs/ca-bundle.crt'}}
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
end
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,'143047686356730', '1ec76810cb993475472ee72c802b22eb',
           # scope: 'public_profile, email',
           # info_fields: 'id, first_name, middle_name, last_name, email, name, link'
           {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end
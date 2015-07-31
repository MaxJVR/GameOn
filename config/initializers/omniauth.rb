OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1448821088761083', '60d04f87c11fcab877548a9c625690f3'
end
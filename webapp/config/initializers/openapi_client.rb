OpenapiClient.configure do |config|
  config.access_token = Rails.application.credentials.sumup.access_token!

  config.params_encoding = :rack
  config.client_side_validation = false
end

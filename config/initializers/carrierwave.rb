CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: '',
    aws_secret_access_key: '',
    region: 'us-west-1'
  }
  config.fog_directory = ''
  config.fog_public = false
end

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region:                ENV['AWS_REGION']
  }

  config.fog_directory                    = ENV['AWS_S3_BUCKET_NAME']
  config.fog_public                       = false # <- Private URLS (with expiration) are generated
  config.fog_authenticated_url_expiration = 600 # seconds (10min)
end

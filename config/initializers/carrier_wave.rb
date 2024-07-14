if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => Rails.application.credentials.aws_credentials[:S3_ACCESS_KEY],
      :aws_secret_access_key => Rails.application.credentials.aws_credentials[:S3_SECRET_KEY], 
      :region  => Rails.application.credentials.aws_credentials[:AWS_REGION],
      }
    config.fog_directory = Rails.application.credentials.aws_credentials[:S3_BUCKET]
  end
end

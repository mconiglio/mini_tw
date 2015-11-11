if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJ5OHFGDB5P5IN73A'],
      :aws_secret_access_key => ENV['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'],
      :region                => ENV['us-east-1']
    }
    config.fog_directory     =  ENV['cdn.mcon']
  end
end
# frozen_string_literal: true

# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.asset_host = Settings.asset_url
end

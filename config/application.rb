require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CNMH
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # The default locale is :es and all translations from config/locales/*.rb,yml are auto loaded.
    config.assets.paths << "#{Rails.root}/app/assets/stylesheets/font-awesome-4.2.0/css/"
     config.assets.paths << "#{Rails.root}/app/assets/stylesheets/bootstrap/" #All bootstraps css files location
     config.assets.paths << "#{Rails.root}/vendor/assets/fonts"
     
  end
end

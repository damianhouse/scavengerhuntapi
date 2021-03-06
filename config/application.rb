require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Scavengerapi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
    # config.active_job.queue_adapter = :delayed_job
    config.paperclip_defaults = {
      storage: :s3,
      s3_region: ENV["SCAVENGER_AWS_S3_REGION"],
      s3_protocol: 'https',
      s3_credentials: {
        bucket: ENV["SCAVENGER_AWS_S3_BUCKET"],
        access_key_id: ENV["SCAVENGER_AWS_ACCESS_KEY_ID"],
        secret_access_key: ENV["SCAVENGER_AWS_SECRET_ACCESS_KEY"]
      }
  } 
  end
end

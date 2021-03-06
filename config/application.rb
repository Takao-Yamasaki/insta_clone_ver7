require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module InstaCloneV7
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #

    # ヘルパーが生成されないように設定
    config.generators do |g|
      g.helper false
    end

    # タイムゾーンの設定
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    
    # バリデーションエラーの表示を調整
    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }

    # デフォルトの言語を日本語に設定
    config.i18n.default_locale = :ja
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

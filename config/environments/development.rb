Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.#
  
  config.action_mailer.perform_deliveries = true
  config.cache_classes = false
  config.action_mailer.default_url_options = { :host => "http://www.gmail.com" }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'gmail.com',
    user_name:            'serkan.altin90@gmail.com',
    password:             'boyindahood12346',
    authentication:       'plain',
    enable_starttls_auto: true  }
  # Do not eager load code on boot.
  config.eager_load = false
  config.action_mailer.raise_delivery_errors = true 

  # Show full
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end

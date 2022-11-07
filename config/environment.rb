# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :user_name => ENV['mailing_key'],
    :password => ENV['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'],
    :domain => 'monsite.fr',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
  
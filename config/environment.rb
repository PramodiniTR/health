# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  user_name:'apikey', 
  password: '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',
  domain: 'https://sheltered-retreat-12255.herokuapp.com/',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
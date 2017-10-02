# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

config.action_cable.url = "wss://www.museek-app.herokuapp.com/cable"
config.action_cable.allowed_request_origins = [ "http://museek-app.herokuapp.com", "http://museek-app.herokuapp.com" ]

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails2x_root_session',
  :secret      => '4066f3dd88f004428f1cb8f485c86d94e55220f66733fb040ba7bfaa2c7c76a3fd0a765c435d0984d8ce33c3e8db7481f860ce7d8faceae942bac00d85da6a24'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

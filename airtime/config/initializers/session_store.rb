# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_airtime_session',
  :secret      => 'e802329ed2c847ccac7d8a85eba8fe453927473c76234816aaa8d27abe9cdd6165d4fdf7f4c098487cf05959119e574eeebec560d3d3fed64dd37c66dfef386f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

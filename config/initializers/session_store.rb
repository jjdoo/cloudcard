# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cloudcard_session',
  :secret      => 'cbfd4aaeb2d17d75438570e229f67c0d89af792fbccb2c0522ef8b89f92916817d5cfdf93bfe0376d62b4e9306b1b4283212340bf3488512294dfc9846352add'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

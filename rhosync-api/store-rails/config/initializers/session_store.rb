# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_store-rails_session',
  :secret      => '77fe7ade97c00922285109b9cbd927758a11b9d56d98881148958918a87c97bfcdc8fac030e44be8692af528a89ce7886d53fb3d59e38f01829bd1f781432a89'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

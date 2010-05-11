# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_aefasterm_session',
  :secret      => 'dfdfa48e8abcc9665340925264392dc05dec9b5c8855a98d8070c1ce6aba07ced2bbc391bb8d8232792ead9182037a9e519f008b6b1dce0d81200d4d3fa6670d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_whoisgettinglunch_session',
  :secret      => 'e7467a2484634f46128db60e0e717a66e387aeddd80e5b0f8d80272855bbdae5b71c22f773de94380097aae8967dd9feba7240deca19ba92fe04c3f5d0373e9c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

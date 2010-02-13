# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_webccq_session',
  :secret      => 'b724dfb66f873c8171fc91760b29ccdb84afecd2608f605464473d7a8f7c9a5b895707af64db5aea3b0aaf129e5506bad66a9fa436d3b4463170f8c1a3b6c3e8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

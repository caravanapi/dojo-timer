# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dojotimer_session',
  :secret      => '8e602fd875c29bdae5ec434aa994c54ec90b3abdd480362650f38fd60e22d0ecb31b5670387f95d324a36eb8c9b70150a53dda1d55f183fc122cbbe5e57ec921'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

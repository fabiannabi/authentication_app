# frozen_string_literal:true

# This will be how the cookie will look like
# The key is the name of the cookie, domain is where it will be pushes to
Rails.application.config.session_store :cookie_store, key: '_authentication_app', domain: 'authentication-app-react'

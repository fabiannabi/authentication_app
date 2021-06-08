# frozen_string_literal:true

# Initial Config for Cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000'
    resource '*', headers: :any, methods: %i[get post patch put head options], credentials: true
  end

  # this will be filled with the domain that you are pushing to
  # allow do
  #   origins 'https://my-app.heroku.com'
  #   resource '*', headers: :any, methods: %i[get post patch put head options], credentials: true
  # end
end

# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'


run Rails.application

require 'rack/cors'
use Rack::Cors do
  # allow do
  #   origins 'http://localhost:3000', '127.0.0.1:3000',
  #           /\Ahttp:\/\/192\.168\.0\.\d{1,3}(:\d+)?\z/
  #
  #   resource '/file/list_all/', :headers => 'x-domain-token'
  #   # resource '/api/v1/ads'
  #   # resource '/api/v1/ads/*'
  #   resource '/file/at/*',
  #            methods: [:get, :post, :delete, :put, :patch, :options, :head],
  #            headers: 'x-domain-token',
  #            expose: ['Some-Custom-Response-Header'],
  #            max_age: 600
  #   # headers to expose
  # end

  allow do
    origins '*'
    resource '*', headers: :any, methods: :any
    # resource '/public/*', headers: :any, methods: :get
    # resource '/api/v1/ads', headers: :any, methods: [:get, :put, :post, :delete]
    # resource '/api/v1/ads/*', headers: :any, methods: [:get, :put, :post, :delete]
  end

end

# bundle exec rake middleware
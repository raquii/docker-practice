require 'rubygems'
require 'bundler/setup'

Bundler.require :default

require_rel 'app'

# main api module
module API
  class Root < Grape::API
    format :json
    prefix :api

    get :status do
      { status: 'ok' }
    end
  end
end

# mount api on rack
Application = Rack::Builder.new do
  map "/" do
    run API::Root
  end
end

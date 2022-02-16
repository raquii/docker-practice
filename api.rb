require 'rubygems'
require 'bundler/setup'

Bundler.require :default

require_rel 'app'
require_rel 'api'

# main api module
module API
  class Root < Grape::API
    format :json
    prefix :api

    get :status do
      { status: 'ok' }
    end

    mount ::API::Greetings
  end
end

require_relative './config/environment.rb'

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
    mount ::API::Mirror
    mount ::API::Humans
  end
end

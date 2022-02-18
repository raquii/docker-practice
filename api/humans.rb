module API
    class Humans < Grape::API
        format :json

        desc 'Mirrors the received string message'
        resource :human do
            get do
                Human.all
            end
        end
    end
    
end
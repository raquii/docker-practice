module API
    class Humans < Grape::API
        format :json

        resource :human do
            get do
                Human.all
            end
        end
    end
    
end
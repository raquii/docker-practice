module API
    class Dogs < Grape::API
        format :json

        resource :dog do
            get do
                Dog.all
            end
        end
    end
    
end
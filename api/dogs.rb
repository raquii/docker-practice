module API
    class Dogs < Grape::API
        format :json

        helpers do
            def dog_params(params)
              {
                name: params[:name],
                favorite_toy: params[:favorite_toy],
                favorite_food: params[:favorite_food],
                date_of_birth: params[:date_of_birth],
                human_id: params[:human_id]
              }
            end

            def find_dog(id)
                Dog.find(id)
            end
        end

        resource :dog do
            desc 'Returns all dogs'
            get do
                Dog.all
            end

            desc 'Returns a dog by id'
            params do 
                requires :id, type: Integer
            end
            route_param :id do
                get do
                  find_dog(params[:id])
                end
            end

            desc 'Creates a dog'
            params do
                requires :name, type: String
                requires :human_id, type: Integer
                optional :favorite_food, type: String
                optional :favorite_toy, type: String
                optional :date_of_birth, type: Date
            end
            post do
                dog = Dog.new(dog_params(params))
                dog.save!

                dog
            end

            desc 'Edit a dog'
            params do
                requires :id, type: Integer
                requires :name, type: String
                requires :human_id, type: Integer
                optional :favorite_food, type: String
                optional :favorite_toy, type: String
                optional :date_of_birth, type: Date
            end
            put ':id' do
                dog = find_dog(params[:id])
                dog.update!(dog_params(params))

                dog
            end

            desc 'Delete a dog'
            params do
                requires :id, type: Integer
            end
            delete ':id' do
                find_dog(params[:id]).destroy
            end

        end
    end
    
end
module API
    class Humans < Grape::API
        format :json
        rescue_from ActiveRecord::RecordNotFound do |e|
            error!('Record not found', 404)
        end
        rescue_from ActiveRecord::RecordInvalid do |e|
            error!(e.message, 409)
        end

        helpers do
            def human_params(params)
              {
                name: params[:name],
                favorite_color: params[:favorite_color],
                favorite_food: params[:favorite_food],
                city: params[:city],
                date_of_birth: params[:date_of_birth]
              }
            end

            def find_human(id)
                Human.find(id)
            end
        end

        resource :human do
            desc 'Returns all humans'
            get do
                Human.all
            end

            desc 'Returns a human'
            params do 
                requires :id, type: Integer
            end
            route_param :id do
                get do
                  find_human(params[:id])
                end
            end

            desc 'Creates a human'
            params do
                requires :name, type: String
                optional :favorite_food, type: String
                optional :favorite_color, type: String
                optional :date_of_birth, type: Date
                optional :city, type: String
            end
            post do
                human = Human.new(human_params(params))
                human.save!

                human
            end

            desc 'Edit a human'
            params do
                requires :id, type: Integer
                requires :name, type: String
                optional :favorite_food, type: String
                optional :favorite_color, type: String
                optional :date_of_birth, type: Date
                optional :city, type: String
            end
            put ':id' do
                human = find_human(params[:id])
                human.update!(human_params(params))

                human
            end

            desc 'Delete a human'
            params do
                requires :id, type: Integer
            end
            delete ':id' do
                find_human(params[:id]).destroy
            end

        end
    end
    
end
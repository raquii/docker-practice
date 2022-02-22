module API
    class Greetings < Grape::API
        format :json

        namespace :greeting do
            params do
                requires :name, type: String, desc: 'Name.'
            end
            route_param :name do
                get do
                    name = params[:name]
                    { message: "Hello, #{name}."}
                end
            end

            get do
                { message: "Hello." }
            end
        end

    end
end
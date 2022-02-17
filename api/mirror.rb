module API
    class Mirror < Grape::API
        format :json

        desc 'Mirrors the received string message'
        resource :mirror do
            params do
                requires :message, type: String
            end
            post do
                reversed = params[:message].reverse
                { params[:message]=> reversed}
            end
        end
    end
    
end
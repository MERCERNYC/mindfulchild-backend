class NewslettersController < ApplicationController
    class Api::V1::NewsletterController < ApplicationController

        def index
          @newsletters= Newsletter.all
          render json: @newsletters
        end
    
        def create
          @newsletter = Newsletter.new(newsletter_params)
          if @newsletter.save
            render json: @newsletter
          else 
            render json: {error: 'Error creating newsletter'}
          end
        end
    
        def show
          @newsletter = Newsletter.find(params[:id])
          render json: @newsletter
        end
    
        def destroy
          @newsletter = Newsletter.find(params[:id])
          @newsletter.destroy
        end
    
        def update
          @newsletter = Newsletter.find(params[:id])
          @newsletter.update(email: params["newsletter"]["email"])
          @newsletter.save
          render json: @newsletter
        end
    
        private
    
        def newsletter_params
          params.require(:newsletter).permit(:email)
        end
    
    
    end
end

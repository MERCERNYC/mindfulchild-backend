class Api::V1::ActivitiesController < ApplicationController
    
    def index
        @activities = @category.activities
        render json: @activities
    end 

    def create
        @activity = @category.activities.build(activity_params)
       
    end 

    def show
        @activity = Activity.find(params[:id])
        render json: @activity
    end 

    private

    def set_category
        @category = Category.find(params[:category_id])
    end 

    def activity_params
        params.require(:activity).permit(:name, :description, :category_id, :url)
    end 

end

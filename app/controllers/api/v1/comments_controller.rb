class Api::V1::CommentsController < ApplicationController

    def index
      @comments= Comment.all
      render json: @comments
    end

    def create
      @comment = Comment.new(comment_params)
      if @comment.save
        render json: @comment
      else 
        render json: {error: 'Error creating comment'}
      end
    end

    def show
      @comment = Comment.find(params[:id])
      render json: @comment
    end

    def destroy
    end

    def update
      @comment = Comment.find(params[:id])
      @comment.update(comment: params["comment"]["name"]["message"])
      @comment.save
      render json: @comment
    end

    private

    def comment_params
      params.require(:comment).permit(:name, :message)
    end

end

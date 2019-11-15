class Api::V1::MessagesController < ApplicationController

    def index
      @messages= Message.all
      render json: @messages
    end

    def create
      @message = Message.new(message_params)
      if @message.save
        render json: @message
      else 
        render json: {error: 'Error creating message'}
      end
    end

    def show
      @message = Message.find(params[:id])
      render json: @message
    end

    def destroy
    end

    def update
      @message = Message.find(params[:id])
      @message.update(email: params["message"]["name"] ["comment"])
      @message.save
      render json: @message
    end

    private

    def message_params
      params.require(:message).permit(:name, :comment)
    end

end

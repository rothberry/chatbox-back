class ChatsController < ApplicationController
    def index
        @chats = Chat.all
        render json: @chats #includes users
    end

    def create
        @chat = Chat.create(chat_params)
        render json: @chat
    end

    private
    def chat_params
        params.require(:chat).permit(:username, :chat_input)
    end
end

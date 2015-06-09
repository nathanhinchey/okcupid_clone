class Api::MessagesController < ApplicationController
	def create
		@message = Message.new(message_params)
		@message.sender_id = current_user.profile.id
		if @message.save
			render :show
		else
			render json: @message.errors.full_messages
		end
	end

	def show
		@message = Message.find(params[:id])
		if current_user.profile.messages.include? @message
			render :show
		else
			head status: :forbidden
		end
	end

	def index
		if current_user
			@messages = current_user.profile.messages
			@profile = current_user.profile.id
			render :index
		else
		  render json: []
		end
	end

	private
		def message_params
			params.require(:message).permit(:receiver_id, :body)
		end
end

class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.message_me(@message).deliver_now
      redirect_to '/'
      # render :new
    end
  end

  private
    def message_params
      params.require(:message).permit(:name, :email, :subject, :content)
    end
end

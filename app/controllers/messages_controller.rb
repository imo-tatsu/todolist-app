class MessagesController < ApplicationController
  def index
    @messages = Message.new
  end

  def create
    Message.create(create_params)
    render action: :new
  end

  private
  def create_params
    params.require(:message).permit(:text)
  end
end


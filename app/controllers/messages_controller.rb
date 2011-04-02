class MessagesController < ApplicationController
  autocomplete :user, :nickname

  def new
    @message = Message.new
  end

  def create
    if Message.create(params[:message])
      redirect_to :new_message, :notice => "Message to user #{params[:message][:to]} created successfully"
    else
      redirect_to :new_message, :alert => "Message not created successfully."
    end
  end
end

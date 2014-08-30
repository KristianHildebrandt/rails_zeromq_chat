class ChatController < ApplicationController
  before_filter :authenticate_user

  def room
    @message = Message.new
    @messages = Message.all
  end

  def post_message
    Message.create!(message_params.merge!(user: session[:user]))
    redirect_to :room
  end

  def login
    session[:user] = params[:user]["user"]

    if session[:user].present?
      redirect_to :room
    end
  end

  def authenticate_user
    render "login", layout: 'login' if session[:user].blank? && params[:user].blank?
  end

  def message_params
    params.require(:message).permit(:message, :usage)
  end

  def logout
    session[:user] = nil
    render "login"
  end
end

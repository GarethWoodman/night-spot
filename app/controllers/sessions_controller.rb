class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email].downcase)

    if @user&.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to "/events"
    else
      redirect_to '/sessions/new', notice: 'Email and/or password is incorrect'
  end
end

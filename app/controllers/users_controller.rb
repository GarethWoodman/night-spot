class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)

    if user.save
      redirect_to '/login', notice: `Weclome #{user.username}`
    else
      redirect_to '/', notice: 'Email and/or password are/is not meeting the requirements'
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end

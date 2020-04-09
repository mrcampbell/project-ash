class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    puts user_params.inspect
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    trainer = Trainer.create(username: @user.username, user_id: @user.id)
    redirect_to '/'
 end

 private
  def user_params
    params.require(:user).permit(:username, :password)
  end
 
end

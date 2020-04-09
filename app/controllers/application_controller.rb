class ApplicationController < ActionController::Base

  before_action :authorized

  # To make these these two methods accessible to Views, we need the assistance of the helper_method macro
  helper_method :current_user
  helper_method :logged_in?

  def current_user    
    User.find_by(id: session[:user_id])
  end

  def current_trainer    
    Trainer.where(users_id: session[:user_id]).first
  end
  
  def logged_in?    
    !current_user.nil?  
  end

  def authorized
    redirect_to '/login' unless logged_in?
  end
end

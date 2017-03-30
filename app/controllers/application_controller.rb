class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create] 
 
  private
 
  def require_login
    unless logged_in?
      flash[:error] = "Debes iniciar sesion primero"
      redirect_to "/log-in" # halts request cycle
    end
  end



	
	def logged_in?
     current_user != nil
   end

  	def current_user
	@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user


  end

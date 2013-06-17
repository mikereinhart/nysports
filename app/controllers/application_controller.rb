class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def current_user
  	if session[:user_id]
  		User.find(session[:user_id])
  	end
  end

  def ensure_admin
    unless current_user && current_user.admin?
      render text: "Sorry, you are not authorized to view this page."
    end
  end
  
end

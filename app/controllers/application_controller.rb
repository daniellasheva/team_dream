class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :correct_user?, :current_user

  def correct_user?(object)
    if object.class == Dream
      object.user_id==session[:user_id]
    elsif object.class == User
      object.id==session[:user_id]
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!session[:user_id]
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 
 before_action :require_current_user

  def current_user 
    session[:name]
  end 
  def require_current_user 
redirect_to root_path unless session.include? :name
    end

end

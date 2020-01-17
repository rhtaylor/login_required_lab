class SecretsController < ApplicationController 
    
    skip_before_action :require_current_user, only: [:new, :create]
    helper_method :current_user 

  def current_user 
      session[:name]
  end 
  def new 

  end
  def show
  end

  

  
end

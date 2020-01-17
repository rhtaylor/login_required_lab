class SessionsController < ApplicationController 
        

    
    skip_before_action :require_current_user, only: [:new, :create]
    helper_method :current_user, :require_current_user

    def current_user 
    session[:name]
  end 

    def new 
    end 

    def create 
       
        @no_name = params[:name].nil?  
        if @no_name 
        flash[:error] = "Name must be filled" 
       
        else 
        @name_not_filled = params[:name].blank? 
            if @name_not_filled 
                flash[:error] = "Type in a name" 
               
            else 
                session[:name] = params[:name] 
               
            end
        end 
        redirect_to @no_name ? {action: :new} : @name_not_filled ? {action: :new} : {action: :homepage}
    end 

    def homepage 

        
        @user = session[:name]
    end  
    
    def destroy 
        @nill = session[:name].nil? 
            if @nill 

            else 
            session.clear  
        
             end 
        redirect_to '/'
    end
  

end

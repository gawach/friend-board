class ApplicationController < ActionController::Base
  
  include SessionsHelper
  
  
  private
    
    def require_user_logged_in
      unless logged_in?
        redirect_to login_url
      end
    end
    
    def require_admin
      if current_user && current_user.admin? == false
        redirect_to root_url
      end
    end
    
end

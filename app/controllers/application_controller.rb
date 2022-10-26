class ApplicationController < ActionController::Base
    before_action :isLogged
    def isLogged
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end
end

class UsersController < ApplicationController
    before_action :set_user
    def show 
      
    end

    private
    def set_user
        if current_user
            @user = current_user
        else
            @user = User.find(params[:id])

        end
    end
end

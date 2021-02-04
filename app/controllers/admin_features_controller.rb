class AdminFeaturesController < ApplicationController
    def index
        @users = User.all
    end

    def make_admin
        @user = User.find(params[:format])
        @user.update(admin: true)
        redirect_to admin_features_index_path
    end
    
    def revoke_admin
        @user = User.find(params[:format])
        @user.update(admin: false)
        redirect_to admin_features_index_path
    end
end
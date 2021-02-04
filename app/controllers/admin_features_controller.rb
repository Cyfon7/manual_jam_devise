class AdminFeaturesController < ApplicationController
    def index
        @users = User.all
    end

    def admin_edit
        @user = User.find(params[:format])
    end
end
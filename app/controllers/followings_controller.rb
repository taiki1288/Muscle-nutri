class FollowingsController < ApplicationController
    before_action :authenticate_user!

    def index
        @user = User.find(params[:user_id])
        @followings = @user.followings
    end
    
end
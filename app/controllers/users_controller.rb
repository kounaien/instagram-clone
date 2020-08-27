class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: [:profile]
    def index
        @posts = Post.active
        @post = Post.first
    end
 
    def profile
        @posts = @user.posts.active
    end

    def set_user
        @user = User.find_by_user_name(params[:user_name])
    end

end

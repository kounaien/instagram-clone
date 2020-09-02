class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: [:profile]
    def index
        @posts = Post.active
        @comment = Comment.new
        
        following_ids = Follower.where(follower_id: current_user.id).map(&:following_id)
        following_ids << current_user.id
        @follower_suggestions = User.where.not(id: following_ids)
       
    end
 
    def profile
        @posts = @user.posts.active
    end

    def follow_user
        follower_id = params[:follow_id]
        if Follower.create!(follower_id: current_user.id, following_id: follower_id)
            flash[:success] = "Now following user"
        else
            flash[:danger] = "unable following user"
        end

        redirect_to dashboard_path
    end
    

    private
    def set_user
        @user = User.find_by_user_name(params[:user_name])
    end

end

class LikesController < ApplicationController
    before_action :authenticate_user!

    def save_like
        @like = Like.new(post_id: params[:post_id], user_id: current_user.id)
        @post_id = params[:post_id]
        existing_like = Like.where(post_id: params[:post_id], user_id: current_user.id)

        respond_to do |format|
            format.js {
                if existing_like.any?
                # if Like.where( post_id: params[:post_id], user_id: current_user.id).any?
                    # like already exists for post by this user
                    existing_like.first.destroy
                    @success = false
                elsif @like.save
                    @success = true
                   
                else
                    @false = false
                end 

                @post_likes = Post.find(@post_id).total_likes_count
                render "posts/like"
            }
        end
  
    end
end

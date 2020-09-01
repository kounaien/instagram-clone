module PostsHelper

    def post_liked_by_user? post_id #括弧の省略　
        Like.where(post_id: post_id, user_id: current_user.id).any? 
    end
    
end

class CommentsController < ApplicationController
    
    def create
        @comment = Cmment.new(comment_params)
        @comment.user_id = current_user.id if user_signed_in?

        if @comment.save
            redirect_to dashboard_path, flash: { success: "Post was created successfully!"}
        else
            redirect_to dashboard_path, flash: { danger: "Post was not saved"}
        end
    end

    def show
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :post_id)
    end
end

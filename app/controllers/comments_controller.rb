class CommentsController < ApplicationController
    
    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id if user_signed_in?

        if @comment.save
            return_url = params[:comment][:return_to].present? ? post_path(@comment.post_id) : dashboard_path
            redirect_to return_url, flash: { success: "Post was created successfully!"}
        else
            redirect_to dashboard_path, flash: { danger: "Post was not saved"}
        end
    end

    def show
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :post_id, :return_to)
    end
end

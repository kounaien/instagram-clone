class PostsController < ApplicationController

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
    end

    def show
    end

    private
    def post_params
        params.requer(:post).permit(:image, :image_catch)
    end
end

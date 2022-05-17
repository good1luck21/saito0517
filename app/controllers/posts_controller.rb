class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.saito_id = session[:user_id]
    p "============="
    p @post
    p "============="
    if @post.save
      redirect_to root_path
    else
      p "============="
      p @post.errors.full_messages
      p "============="
      render :new
    end
  end

  def index
  end

  private
    def post_params
      params.require(:post).permit(:title)
    end
end

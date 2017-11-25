class MainController < ApplicationController
  def index
    @posts = Post.all
  end

  def create_post
    Post.create(post_params)
    redirect_to main_path
  end

  def create_comment
    @post = Post.find(params[:id])
    @post.comments.create(comment_params)
    redirect_to main_path
  end

  private 

  def post_params
    params.require(:post).permit(:name, :like)
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end

class PostsController < ApplicationController
  def index
    @posts = Post.all
    @comment = Comment.new

  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @post = current_user.owner_posts.find(params[:id])
    @post = Post.find(params[:id])
  end


  def update
    @post = current_user.owner_posts.find(params[:id])
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to post_url

  end

end

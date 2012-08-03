class Admins::PostsController < Admins::ApplicationController
  def index
    @posts = Post.all

  end

  def show
    @post = Post.find(params[:id])

  end

  def new
    @post = Post.new

  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    redirect_to admins_posts_url

  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to admins_posts_url

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to admins_posts_url
  end
end

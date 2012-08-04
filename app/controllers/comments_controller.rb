class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    respond_with(@comments)

  end

  def show
    @comment = Comment.find(params[:id])
    respond_with(@comment)
    redirect_to :back
  end

  def new
    @comment = Comment.new
    respond_with(@comment)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.save
    respond_to do |format|
      format.js
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment])
    respond_with(@comment)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_with(@comment)
  end
end

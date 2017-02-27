class PostsController < ApplicationController
  def new
  end

  def create
 	@post = Post.new
 	@post.title = params[:title]
 	@post.body = params[:body]
  	@post.save
  	redirect_to posts_path(@post.id)
  end

  def index
  	@posts = Post.all
  end

  def show
   @post = Post.find(params[:id])
  end

  def edit
   @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save
    redirect_to post_path(@post.id)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

 end

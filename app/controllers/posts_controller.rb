class PostsController < ApplicationController
  def index
    @posts = Post.order(id: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create!(post_params)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update!(post_params)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end

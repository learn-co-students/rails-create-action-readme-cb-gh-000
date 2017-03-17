class PostsController < ApplicationController
  def create
    post = Post.create(post_params)

    redirect_to post_path(post)
  end

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

  private

  def post_params
    params.permit(:description, :title)
  end
end

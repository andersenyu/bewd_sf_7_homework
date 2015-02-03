class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to post_path(@post)
  	else
  		render :new
  	end
  end

def index
  	@posts = Post.all
  end

  def show
  	@post = get_post
  end

  def edit
  	@post = get_post
  end

  def update
    @post = get_post
    if @post.update(post_params)
      redirect_to posts_path(@post)
  else 
    render :edit
  end
  end

  def destroy
  @post = get_post
  @post.destroy
  redirect_to posts_path
  end

private

	def post_params
		params.require(:post).permit(:client_id, :title, :submission_date)
	end

	def get_post
		@post = Post.find(params[:id])
	end
end

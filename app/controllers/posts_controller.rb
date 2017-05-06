class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :destroy, :vote]

  def index
    @posts = current_user.posts.all
    @public_posts = Post.all.available(current_user)
  end

  def new
    @post = current_user.posts.new
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to posts_path, notice: "資料更新成功!"
    else
      render :edit
    end
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to posts_path, notice: "成功新增候選人!"
    else
      render :new
    end
  end

  def destroy
    @post.destroy if @post
    redirect_to posts_path, notice: "候選人資料已刪除!"
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :public)
  end

  def find_post
    @post = Post.find_by(id: params[:id])
  end

end
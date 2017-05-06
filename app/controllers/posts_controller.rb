class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :destroy, :vote]

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.new
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      # 成功
      redirect_to posts_path, notice: "資料更新成功!"
    else
      # 失敗
      render :edit
    end
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      # 成功
      redirect_to posts_path, notice: "成功新增候選人!"
    else
      # 失敗
      render :new
    end
  end

  def destroy
    @post.destroy if @post
    redirect_to posts_path, notice: "候選人資料已刪除!"
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end

  def find_post
    @post = Post.find_by(id: params[:id])
  end

end
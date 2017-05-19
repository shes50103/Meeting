class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show, :edit, :update, :destroy]

  def index
    @chatrooms = Chatroom.public_channels
  end

  def show
    @messages = @chatroom.messages.order(created_at: :desc).limit(100).reverse
    @chatroom_user = current_user.chatroom_users.find_by(chatroom_id: @chatroom.id)
  end

  def new
    @chatroom = Chatroom.new
  end

  def edit
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    respond_to do |format|
      if @chatroom.save
        @chatroom.chatroom_users.where(user_id: current_user.id).first_or_create
        format.html { redirect_to @chatroom, notice: 'Chatroom was successfully created.' }
        format.json { render :show, status: :created, location: @chatroom }
      else
        format.html { render :new }
        format.json { render json: @chatroom.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @chatroom.update(chatroom_params)
        format.html { redirect_to @chatroom, notice: 'Chatroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @chatroom }
      else
        format.html { render :edit }
        format.json { render json: @chatroom.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @chatroom.destroy
    respond_to do |format|
      format.html { redirect_to chatrooms_url, notice: 'Chatroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_chatroom
      @chatroom = Chatroom.find(params[:id])
    end

    def chatroom_params
      params.require(:chatroom).permit(:name)
    end
end

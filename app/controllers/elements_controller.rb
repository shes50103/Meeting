class ElementsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chatroom
  before_action :set_element, only: [:edit, :update, :destroy]


  def new
    @element = @chatroom.elements.build
  end

  def create
    element = @chatroom.elements.new(element_params)
    return redirect_to @chatroom if element.save
    render :new
  end

  def edit
  end

  # def update
  #   return redirect_to @chatroom if element.save
  #   render :edit
  # end

  def update
    return redirect_to @chatroom if @element.update_attributes(element_params)
    render :edit
  end

  def destroy
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def set_element
    @element = @chatroom.elements.find(params[:id])
  end

  def element_params
    params.require(:element).permit(:name, :content, :completion)
  end
end

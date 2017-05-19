class ElementsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chatroom

  def new
    @element = @chatroom.elements.build
  end

  def create
    element = @chatroom.elements.new(element_params)
    return redirect_to @chatroom if element.save
    render :new
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def element_params
    params.require(:element).permit(:name, :content, :completion)
  end
end

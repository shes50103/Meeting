class FriendshipsController < ApplicationController
    def create
      @friendship = current_user.friendships.build(friend_id: params[:friend_id])
      if @friendship.save
        flash[:notice] = "Friend requested."
        redirect_to :static_index
      else
        flash[:error] = "Unable to request friendship."
        redirect_to :static_index
      end
    end

    def update
    @friendship = Friendship.find_by(id: params[:id])
    @friendship.update(accepted: "true")
      if @friendship.save
        redirect_to :static_index, notice: "Successfully confirmed friend!"
      else
        redirect_to :static_index, notice: "Sorry! Could not confirm friend!"
      end
    end

    def destroy
      @friendship = Friendship.find_by(id: params[:id])
      @friendship.destroy
      flash[:notice] = "Removed friendship."
      redirect_to :static_index
    end
end

class RelationshipsController < ApplicationController
  before_action :set_followed

  def create
    @relationship = Relationship.new(followed_id: @followed_user, follower_id: current_user)
    byebug
    respond_to do |format|
      if @relationship.save
        format.html { redirect_to root_path }
      else
        flash[:alert] = "Already following"
        format.html { redirect_to root_path }
      end
    end
  end

  private

  def set_followed
    @followed_user = User.find(params[:followed_id]) or not_found
    byebug
  end
end

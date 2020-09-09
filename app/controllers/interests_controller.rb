class InterestsController < ApplicationController
  before_action :set_topic

  def create
    @interest = current_user.interests.build(topic: @topic)
    respond_to do |format|
      if @interest.save
        format.html { redirect_to root_path }
      else
        flash[:alert] = "Already following"
        format.html { redirect_to root_path }
      end
    end
  end

  private

  def set_topic
    @topic = Topic.find(params[:topic_id]) or not_found
  end

end

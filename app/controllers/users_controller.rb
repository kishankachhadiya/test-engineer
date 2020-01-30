class UsersController < ApplicationController

  def follow_user
    follow = UserFollow.new(user_id: params[:id], following_user_id: current_user.id)
    if params[:id].to_i == current_user.id
      flash[:notice] = "Can not follow yourself."
    elsif follow.save
      flash[:notice] = "Follow Successfully"
    else
      flash[:notice] = "Already following"
    end
    redirect_back(fallback_location: root_path)
  end

  def follow_topic
    follow = UserFollowTopic.new( user_id: current_user.id, topic_id: params[:id])
    if follow.save
      flash[:notice] = "Follow Successfully"
    else
      flash[:notice] = "Already following"
    end
    redirect_back(fallback_location: root_path)
  end

end

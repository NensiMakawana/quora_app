class UsersController < ApplicationController

  def follow_user
    user = User.find(params[:id])
    if user.present?
      unless helpers.alredy_following(user.id)
        current_user.followings << user
        redirect_to question_path(params[:que_id]), notice: "Following user succesfully.."
      else
        redirect_to question_path(params[:que_id]), notice: "Alredy Following..." 
      end
    end
  end

  def follow_topic
    topic = Topic.find(params[:topic_id])
    if topic.present?
      unless helpers.alredy_following_topic(topic.id)
        current_user.topics << topic
        redirect_to question_path(params[:que_id]), notice: "Following topic succesfully.."
      else
        redirect_to question_path(params[:que_id]), notice: "Alredy following this topic..." 
      end
    end
  end
end

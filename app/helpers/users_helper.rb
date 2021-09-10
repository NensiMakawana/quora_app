module UsersHelper
  def alredy_following(user_id)
    current_user.followings.ids.include? user_id
  end

  def follow_or_following_user(user_id)
    alredy_following(user_id) ? 'Following..' : 'FollowUser'
  end

  def alredy_following_topic(topic_id)
    current_user.topics.ids.include? topic_id
  end

  def follow_or_following_topic(topic_id)
    alredy_following_topic(topic_id) ? 'Following..' : 'FollowTopic'
  end
end

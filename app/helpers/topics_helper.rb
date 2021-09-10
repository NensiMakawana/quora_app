module TopicsHelper

  def get_all_topics
    Topic.all.map {|t| [t.title, t.id]}
  end
end

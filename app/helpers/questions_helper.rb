module QuestionsHelper
  
  def not_me(que_user)
    que_user != current_user
  end

  def alredy_given_answer(question_id)
    current_user.answers.pluck(:question_id).include? question_id
  end

  def your_answer(question_id)
    current_user.answers.find_by(question_id: question_id).text_answer
  end
end

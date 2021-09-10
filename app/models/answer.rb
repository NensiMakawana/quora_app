class Answer < ApplicationRecord
  ###########Associations###########
  belongs_to :user
  belongs_to :question
  ############Validations#####
  validates :text_answer, presence: true
end

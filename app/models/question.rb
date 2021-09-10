class Question < ApplicationRecord
  ###########Associations###########
  has_many :answers, dependent: :destroy
  belongs_to :user
  belongs_to :topic
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  ###########Associations###########
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_and_belongs_to_many :followings, class_name: 'User', join_table: :followings_users, foreign_key: :following_id
  has_and_belongs_to_many :topics
end

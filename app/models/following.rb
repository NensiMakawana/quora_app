class Following < ApplicationRecord
  ###########Associations###########
  has_and_belongs_to_many :users, join_table: :followings_users
end

class CreateJoinTableUsersFollowings < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :followings do |t|
      # t.index [:user_id, :following_id]
      # t.index [:following_id, :user_id]
    end
  end
end

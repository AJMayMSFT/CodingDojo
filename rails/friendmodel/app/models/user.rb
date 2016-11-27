class User < ApplicationRecord
  # has_many :friendships
  # has_many :users, through :friendships
  has_and_belongs_to_many :friends,
                          :class_name => "User",
                          :join_table => "users_friends",
                          :foreign_key => "user_id",
                          :association_foreign_key => "friend_id"

def add_friend(friend)
  self.friends << friend unless self.friends.include?(friend) || friend == self
end

end

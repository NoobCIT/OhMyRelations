class Post < ApplicationRecord
  #belongs_to :user
  #Suppose I want to use author instead of user, do this:
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  # But the posts table is still using user_id
  # So you need to redefine the foreign key as shown above

  # Using many to many relationships HABTM - has and belongs to many
  has_and_belongs_to_many :users  
end

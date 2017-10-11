class Game < ApplicationRecord
  # Using many to many relationships with a through table
  has_many :enrollments
  has_many :users, through: :enrollments

  #Using polymorphic association
  has_many :comments, as: :commentable
end

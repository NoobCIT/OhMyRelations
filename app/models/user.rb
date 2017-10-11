class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  #You destroy a user and all associated posts connected to that user will be gone too
  has_one :address
  # Using many to many relationships HABTM - has and belongs to many
  has_and_belongs_to_many :events
  # Using many to many relationships with a through table
  has_many :enrollments
  has_many :games, through: :enrollements

  # Has one through relationship
  has_one :purse
  has_one :payment_history, through: :purse

  # Using polymorphic association
  has_many :comments, as: :commentable
end

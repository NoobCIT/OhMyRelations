class Comment < ApplicationRecord
  # Using polymorphic association
  belongs_to :commentable, polymorphic: true
end

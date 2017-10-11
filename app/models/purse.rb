class Purse < ApplicationRecord
  
  # Has one through relationship
  belongs_to :user
  has_one :payment_history
end

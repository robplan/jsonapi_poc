class User < ApplicationRecord
  has_many :phone_numbers

  validates :first_name, presence: true
  validates :last_name, presence: true
end

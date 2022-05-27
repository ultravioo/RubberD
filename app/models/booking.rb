class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :duck

  validates :date, presence: true
end

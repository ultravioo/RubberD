class Review < ApplicationRecord
  belongs_to :duck
  validates :content, presence: true
end

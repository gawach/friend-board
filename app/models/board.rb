class Board < ApplicationRecord
  belongs_to :game
  belongs_to :user
  
  validates :target_rank, presence: true
  validates :recruit_number, presence: true
  validates :content, length: { maximum: 255 }
end

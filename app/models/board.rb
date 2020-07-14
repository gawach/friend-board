class Board < ApplicationRecord
  belongs_to :game
  
  validates :target_rank, presence: true
  validates :recruit_number, presence: true
  validates :content, length: { maximum: 255 }
end

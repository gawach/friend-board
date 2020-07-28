class Game < ApplicationRecord
  validates :title, presence: true
  
  has_many :boards, dependent: :destroy
end

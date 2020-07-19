class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, 
                                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                                    uniqueness: { case_sensitive: false }
  has_secure_password
  
  has_many :boards
  has_many :parties, foreign_key: :join_id
  has_many :joinings, through: :parties, source: :board
  
  
  def join(board)
    self.parties.find_or_create_by(board_id: board.id)
  end
  
  def unjoin(board)
    join = self.parties.find_or_create_by(board_id: board.id)
    join.destroy if join
  end
  
  def joining?(board)
    self.joinings.include?(board)
  end
end

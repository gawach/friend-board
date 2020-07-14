class Party < ApplicationRecord
  belongs_to :user
  belongs_to :join_id
  belongs_to :board_id
end

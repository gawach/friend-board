class Party < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :board
  belongs_to :join, class_name: 'User', foreign_key: :join_id

end

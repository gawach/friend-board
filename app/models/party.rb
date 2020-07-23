class Party < ApplicationRecord
  belongs_to :join, class_name: 'User', foreign_key: :join_id
  belongs_to :board

end

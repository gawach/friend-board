class AddColumnToBoards < ActiveRecord::Migration[5.2]
  def change
    add_reference :boards, :game, foreign_key: true
  end
end

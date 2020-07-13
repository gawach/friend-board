class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :target_rank
      t.integer :recruit_number
      t.string :content
      
      t.timestamps
    end
  end
end

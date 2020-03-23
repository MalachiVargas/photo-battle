class CreateBattles < ActiveRecord::Migration[5.1]
  def change
    create_table :battles do |t|
      t.integer :battleID
      t.integer :numPlayers
      t.integer :votes0
      t.integer :votes1
      t.integer :votes2
      t.integer :votes3

      t.timestamps
    end
  end
end

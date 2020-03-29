class CreateBattleAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :battle_attachments do |t|
      t.integer :battle_id
      t.string :avatar

      t.timestamps
    end
  end
end

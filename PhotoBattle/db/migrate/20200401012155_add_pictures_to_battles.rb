class AddPicturesToBattles < ActiveRecord::Migration[5.1]
  def change
    add_column :battles, :pictures, :string
  end
end

class AddPicturesToBattles < ActiveRecord::Migration[5.1]
  def change
    add_column :battles, :pictures, :json
  end
end

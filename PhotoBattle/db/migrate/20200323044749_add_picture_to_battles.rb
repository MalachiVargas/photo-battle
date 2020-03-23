class AddPictureToBattles < ActiveRecord::Migration[5.1]
  def change
    add_column :battles, :picture, :string
  end
end

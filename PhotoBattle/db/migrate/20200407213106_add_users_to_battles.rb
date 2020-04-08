class AddUsersToBattles < ActiveRecord::Migration[5.1]
  def change
    add_reference :battles, :user, foreign_key: true
  end
end

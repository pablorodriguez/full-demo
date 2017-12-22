class AddManagerToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manager_id, :int
    add_index :users, :manager_id
  end
end

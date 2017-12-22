class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.text :data
      t.float :duration
      t.string :topic
      t.string :caller_id
      t.string :receiver_id

      t.timestamps
    end
  end
end

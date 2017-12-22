class AddAudioToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :audio, :string
  end
end

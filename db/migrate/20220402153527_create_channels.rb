class CreateChannels < ActiveRecord::Migration[6.1]
  def change
    create_table :channels do |t|
      t.string :name
      t.string :genre
      t.string :img_url
      t.integer :service_id

      t.timestamps
    end
  end
end

class DropGenreFromChannels < ActiveRecord::Migration[6.1]
  def change
    remove_column :channels, :genre, :string
    add_column :channels, :description, :string
  end
end

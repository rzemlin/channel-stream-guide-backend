class AddReferencesToChannels < ActiveRecord::Migration[6.1]
  def change
    add_reference :channels, :genre, foreign_key: true
  end
end

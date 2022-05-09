class AddUserIdToChannels < ActiveRecord::Migration[6.1]
  def change
    add_reference :channels, :user, null: false, foreign_key: true
  end
end

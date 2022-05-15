class DropUseridFromChannels < ActiveRecord::Migration[6.1]
  def change
    remove_colum :channels, :user_id, :integer
  end
end

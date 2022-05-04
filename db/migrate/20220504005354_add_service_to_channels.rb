class AddServiceToChannels < ActiveRecord::Migration[6.1]
  def change
    remove_column :channels, :service_id, :integer
    add_reference :channels, :service, foreign_key: true
  end
end

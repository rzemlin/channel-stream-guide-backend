class AddRowsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_column :users, :bio, :string
    add_column :users, :img_url, :string
    add_column :users, :password_digest, :string
  end
end

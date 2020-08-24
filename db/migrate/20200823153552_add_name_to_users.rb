class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string, limit: 20
    add_column :users, :first_name, :string, limit: 20
    add_column :users, :user_name, :string, limit: 20
  end
end

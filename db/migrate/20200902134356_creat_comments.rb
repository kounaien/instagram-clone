class CreatComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :posts
      t.references :users
      t.string :comment

      t.timestamps
    end
  end
end

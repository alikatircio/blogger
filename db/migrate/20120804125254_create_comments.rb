class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :id
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end

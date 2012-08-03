class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :heading
      t.text :description
      t.integer :user_id

      t.timestamps
    end
    add_index :feeds, :user_id
  end
end

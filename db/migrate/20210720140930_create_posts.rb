class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :body
      t.integer :price
      t.string :place
      t.integer :user_id
      t.string :stockprice
      t.json :pictures
      t.timestamps
    end
  end
end

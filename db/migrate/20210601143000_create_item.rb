class CreateItem < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :qty
      t.integer :item_rating
      t.string :item_img
      t.integer :seller_id

      t.timestamps
    end
  end
end

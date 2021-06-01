class CreateSeller < ActiveRecord::Migration[6.1]
  def change
    create_table :sellers do |t|
      t.string :name
      t.text :description #store description
      t.integer :seller_rating
      t.string :profile_img
      t.string :email

      t.timestamps
    end
  end
end


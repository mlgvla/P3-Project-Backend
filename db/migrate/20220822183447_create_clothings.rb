class CreateClothings < ActiveRecord::Migration[6.1]
  def change
    create_table :clothings do |t|
      t.string :title
      t.integer :price
      t.integer :quantity
      t.string :brand
    end
  end
end

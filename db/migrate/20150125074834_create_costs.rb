class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.integer :price
      t.string :unit
      t.integer :quantity
      t.references :user, index: true
      t.references :product, index: true
      t.references :shop, index: true

      t.timestamps null: false
    end
    add_foreign_key :costs, :users
    add_foreign_key :costs, :products
    add_foreign_key :costs, :shops
  end
end

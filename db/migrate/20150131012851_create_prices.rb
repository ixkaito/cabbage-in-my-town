class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :unit_price
      t.string :unit
      t.integer :quantity
      t.references :user, index: true
      t.references :product, index: true
      t.references :shop, index: true

      t.timestamps null: false
    end
    add_foreign_key :prices, :users
    add_foreign_key :prices, :products
    add_foreign_key :prices, :shops
  end
end

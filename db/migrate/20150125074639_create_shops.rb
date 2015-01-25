class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.references :area, index: true

      t.timestamps null: false
    end
    add_foreign_key :shops, :areas
  end
end

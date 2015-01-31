class CreateTowns < ActiveRecord::Migration
  def change
    create_table :towns do |t|
      t.string :name
      t.references :city, index: true

      t.timestamps null: false
    end
    add_foreign_key :towns, :cities
  end
end

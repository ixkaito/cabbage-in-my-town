class AddKanaColumnToCity < ActiveRecord::Migration
  def change
    add_column :cities, :kana, :string
  end
end

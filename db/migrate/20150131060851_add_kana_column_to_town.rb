class AddKanaColumnToTown < ActiveRecord::Migration
  def change
    add_column :towns, :kana, :string
  end
end

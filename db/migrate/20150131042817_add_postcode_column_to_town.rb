class AddPostcodeColumnToTown < ActiveRecord::Migration
  def change
    add_column :towns, :postal_code, :string
  end
end

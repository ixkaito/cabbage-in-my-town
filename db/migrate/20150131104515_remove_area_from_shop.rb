class RemoveAreaFromShop < ActiveRecord::Migration
  def change
    remove_reference :shops, :area, index: true
    remove_foreign_key :shops, :areas
  end
end

class AddPrefectureToShops < ActiveRecord::Migration
  def change
    add_reference :shops, :prefecture, index: true
    add_foreign_key :shops, :prefectures
    add_reference :shops, :city, index: true
    add_foreign_key :shops, :cities
    add_reference :shops, :town, index: true
    add_foreign_key :shops, :towns
  end
end

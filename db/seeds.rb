# coding: utf-8
require "csv"

CSV.foreach('db/prefecturals_name_seed.csv') do |row|
  record     = {name: row[1]}

  prefecture = Prefecture.find_or_initialize_by(record)
  prefecture.save
  p prefecture
end

CSV.foreach('db/cities_name_seed.csv') do |row|
  prefecture = Prefecture.where(name: row[0]).first
  record     = {name: row[1], prefecture_id: prefecture.id, kana: row[2]}

  city = City.find_or_initialize_by(record)
  city.save
  p city
end

CSV.foreach('db/towns_name_seed.csv') do |row|
  city      = City.where(name: row[1]).first
  town_name = (row[2].blank? ? "その他" : row[2])
  town_kana = (row[2].blank? ? "ソノタ" : row[3])
  record    = {name: town_name, city_id: city.id, postal_code: row[0], kana: town_kana}

  town = Town.find_or_initialize_by(record)
  town.save
  p town
end

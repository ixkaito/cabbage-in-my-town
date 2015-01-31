class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category, foreign_key: :category_id
end

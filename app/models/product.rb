class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category, foreign_key: :category_id
  validates :name, presence: true
  validates :category_id, presence: true
end

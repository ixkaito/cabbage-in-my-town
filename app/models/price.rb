class Price < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :shop
end

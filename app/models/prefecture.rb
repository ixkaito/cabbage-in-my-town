class Prefecture < ActiveRecord::Base
  has_many :cities
  has_many :towns , through: :cities
end

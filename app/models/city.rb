class City < ActiveRecord::Base
  resourcify
  has_many :districts
end

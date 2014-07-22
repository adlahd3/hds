class City < ActiveRecord::Base
  resourcify
  has_many :districts
  has_paper_trail
end

class District < ActiveRecord::Base
  resourcify
  belongs_to :city
  has_paper_trail
end

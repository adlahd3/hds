class District < ActiveRecord::Base
  resourcify
  belongs_to :city
end

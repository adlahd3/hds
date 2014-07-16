class Address < ActiveRecord::Base
  belongs_to :city_id
  belongs_to :district_id

  has_and_belongs_to_many :customers
end

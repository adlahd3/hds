class Address < ActiveRecord::Base
  belongs_to :city
  belongs_to :district

  has_and_belongs_to_many :customers
end

class Customer < ActiveRecord::Base
  has_and_belongs_to_many :addresses
  has_paper_trail
  resourcify
end

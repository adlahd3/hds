class OrderType < ActiveRecord::Base
  has_paper_trail
  resourcify
  has_many :orders
end

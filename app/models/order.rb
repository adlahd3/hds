class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :address
  mount_uploader :bill_image, BillUploader
end

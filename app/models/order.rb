class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :address
  belongs_to :user
  belongs_to :order_type
  mount_uploader :bill_image, BillUploader

  include AASM
  aasm do
    state :opened, :initial => true
    state :assigned
    state :closed
    state :force_closed

    event :assign do
      transitions :from => :opened, :to => :assigned
    end

    event :close do
      transitions :from => :assigned, :to => :closed
    end

    event :force_close do
      transitions :from => [:opened, :assigned], :to => :force_closed
    end

  end
end

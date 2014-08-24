class AddUserToOrders < ActiveRecord::Migration
  def self.up
    add_reference :orders, :user, index: true
  end

  def self.down
    remove_reference :orders, :user, index: true
  end
end

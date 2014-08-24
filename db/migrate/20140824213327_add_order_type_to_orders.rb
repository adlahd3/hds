class AddOrderTypeToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :order_type, index: true
  end
end

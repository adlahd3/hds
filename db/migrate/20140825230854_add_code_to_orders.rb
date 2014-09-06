class AddCodeToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :code, :string
  end

  def self.down
    remove_column :orders, :code, :string
  end
end

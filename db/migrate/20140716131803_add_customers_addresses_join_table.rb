class AddCustomersAddressesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :customers_addresses, :id => false do |t|
      t.integer :customer_id
      t.integer :address_id
    end
  end

  def self.down
    drop_table :customers_addresses
  end
end

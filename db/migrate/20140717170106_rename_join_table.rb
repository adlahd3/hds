class RenameJoinTable < ActiveRecord::Migration
  def self.up
    rename_table :customers_addresses, :addresses_customers
  end
end

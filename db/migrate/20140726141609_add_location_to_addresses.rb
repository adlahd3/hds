class AddLocationToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :location, :string
  end

  def self.down
    remove_column :addresses, :location, :string
  end
end

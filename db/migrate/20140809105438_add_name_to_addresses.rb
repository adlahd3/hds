class AddNameToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :name, :string
  end

  def self.down
    remove_column :addresses, :name, :string
  end
end

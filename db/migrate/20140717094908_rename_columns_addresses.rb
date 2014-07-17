class RenameColumnsAddresses < ActiveRecord::Migration
  def self.up
    rename_column :addresses, :city_id_id, :city_id
    rename_column :addresses, :district_id_id, :district_id

  end
end

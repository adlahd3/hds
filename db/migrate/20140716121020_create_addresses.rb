class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.float :lat
      t.float :lon
      t.references :city_id, index: true
      t.references :district_id, index: true
      #t.string :deliver_in_the_city

      t.timestamps
    end
  end
end

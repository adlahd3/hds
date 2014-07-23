class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer, index: true
      t.references :address, index: true
      t.string :bill_number
      t.text :note
      t.string :bill_image

      t.timestamps
    end
  end
end

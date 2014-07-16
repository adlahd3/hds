class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :mobile
      t.string :message_language
      t.string :email

      t.timestamps
    end
  end
end

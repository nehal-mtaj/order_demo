class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :cust_name
      t.string :cust_phone_no

      t.timestamps
    end
  end
end

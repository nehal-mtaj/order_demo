class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :product_name
      t.string :qty
      t.string :price
	  t.references :order ,index: true
      t.timestamps
    end
  end
end

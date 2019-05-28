class CreateWares < ActiveRecord::Migration[5.2]
  def change
    create_table :wares do |t|
      t.decimal :quantity
      t.decimal :price
      t.decimal :discount

      t.timestamps
    end
  end
end

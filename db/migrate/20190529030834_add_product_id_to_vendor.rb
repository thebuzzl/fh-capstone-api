class AddProductIdToVendor < ActiveRecord::Migration[5.2]
  def change
    add_reference :vendors, :products, foreign_key: true
  end
end

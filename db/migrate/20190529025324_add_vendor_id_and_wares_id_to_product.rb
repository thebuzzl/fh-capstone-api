class AddVendorIdAndWaresIdToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :vendor, foreign_key: true
    add_reference :products, :wares, foreign_key: true
  end
end

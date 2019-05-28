class CreateJoinTableMarketsVendors < ActiveRecord::Migration[5.2]
  def change
    create_join_table :markets, :vendors do |t|
      # t.index [:market_id, :vendor_id]
      # t.index [:vendor_id, :market_id]
    end
  end
end

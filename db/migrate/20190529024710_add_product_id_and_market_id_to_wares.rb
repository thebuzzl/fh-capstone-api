class AddProductIdAndMarketIdToWares < ActiveRecord::Migration[5.2]
  def change
    add_reference :wares, :product, foreign_key: true
    add_reference :wares, :market, foreign_key: true
  end
end

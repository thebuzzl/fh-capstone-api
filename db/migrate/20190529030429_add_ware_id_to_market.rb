class AddWareIdToMarket < ActiveRecord::Migration[5.2]
  def change
    add_reference :markets, :wares, foreign_key: true
  end
end

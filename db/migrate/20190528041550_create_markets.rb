class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.decimal :latitude
      t.decimal :longitude
      t.string :url
      t.string :phone
      t.time :open_mon
      t.time :open_tue
      t.time :open_wed
      t.time :open_thu
      t.time :open_fri
      t.time :open_sat
      t.time :open_sun
      t.time :close_mon
      t.time :close_tue
      t.time :close_wed
      t.time :close_thu
      t.time :close_fri
      t.time :close_sat
      t.time :close_sun
      t.string :manager

      t.timestamps
    end
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# t.string :name
# t.string :address1
# t.string :address2
# t.string :city
# t.string :state
# t.integer :zip
# t.decimal :latitude
# t.decimal :longitude
# t.string :url
# t.string :phone
# t.time :open_mon
# t.time :open_tue
# t.time :open_wed
# t.time :open_thu
# t.time :open_fri
# t.time :open_sat
# t.time :open_sun
# t.time :close_mon
# t.time :close_tue
# t.time :close_wed
# t.time :close_thu
# t.time :close_fri
# t.time :close_sat
# t.time :close_sun
# t.string :manager

User.create(firstname: 'Russell', lastname: 'Schmidt', email: 'r@rusl.io', phone: '213-709-6969')

Market.create(name:'Adams/Vermont Farmer\'s Market', address1: "1432 W. Adams Blvd", address2: nil, city: 'Los Angeles', state: 'CA', zip: 90007, latitude: 34.032760, longitude: -118.287570, url: 'https://www.facebook.com/adamsvermontfm/', phone: '310-621-0336', open_wed: "2019-05-27 14:00:00", close_wed: "2019-05-27 18:00:00")

Vendor.create(name: 'Test Apples', market_id: Market.where(name: 'Adams/Vermont Farmer\'s Market')[0].id)

Product.create(name: 'apple', category: 'fruit', vendor_id: Vendor.where(name: 'Test Apples')[0].id, market_id: Market.where(name: 'Adams/Vermont Farmer\'s Market' )[0].id )

Ware.create(price: '1.99', quantity: '100', discount: '0.2', market_id: Market.where(name: 'Adams/Vermont Farmer\'s Market' )[0].id, product: Product.where(name: 'apple')[0].id)
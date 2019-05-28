class MarketSerializer < ActiveModel::Serializer
  attributes :id, :name, :address1, :address2, :city, :state, :zip, :latitude, :longitude, :url, :manager, :phone, :open_mon, :open_tue, :open_wed, :open_thu, :open_fri, :open_sat, :open_sun, :close_mon, :close_tue, :close_wed, :close_thu, :close_fri, :close_sat, :close_sun

  # has_and_belongs_to_many :vendors >>> serializer doesnt care, has_many is fine
  has_many :vendors
  has_many :wares
end

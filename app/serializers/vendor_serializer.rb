class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :manager

  # has_and_belongs_to_many :markets  >>> serializer doesnt care, has_many is fine
  has_many :markets
  has_many :products

end

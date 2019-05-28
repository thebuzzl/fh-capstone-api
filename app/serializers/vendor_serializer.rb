class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :manager

  has_and_belongs_to_many :markets
  has_many :products

end

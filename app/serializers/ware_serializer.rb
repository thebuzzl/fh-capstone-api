class WareSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :price, :discount

  belongs_to :product
  belongs_to :market
end

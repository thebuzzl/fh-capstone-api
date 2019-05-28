class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit_of_measure, :category

  belongs_to :vendor
  has_many :wares
end

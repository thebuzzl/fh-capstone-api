class Vendor < ApplicationRecord
  has_and_belongs_to_many :markets
  has_many :products
end

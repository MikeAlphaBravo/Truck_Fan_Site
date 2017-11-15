class Truck < ApplicationRecord
  validates :make, :model, :link, :year, :author, :presence => true
end

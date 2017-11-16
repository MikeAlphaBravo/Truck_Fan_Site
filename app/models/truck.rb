class Truck < ApplicationRecord
  has_many :comments
  validates :make, :model, :link, :year, :author, :presence => true

  scope :only_makes, -> (make_parameter) { where("make like ?", "%#{make_parameter}%")}

end

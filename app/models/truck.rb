class Truck < ApplicationRecord
  has_many :comments
  validates :make, :model, :link, :year, :author, :presence => true

  # scope :status, -> (status) { where status: status }
  # scope :location, -> (name) { where("name like ?", "#{name}%")}
  scope :only_makes, -> (make_parameter) { where("make like ?", "%#{make_parameter}%")}
  scope :search, -> (search) { where("make like ? OR model like ? OR year like ?", "%#{search}%", "%#{search}%", "%#{search}%")}
end

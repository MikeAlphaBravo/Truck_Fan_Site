class Truck < ApplicationRecord
  has_many :comments
  validates :make, :model, :link, :year, :author, :presence => true

  # scope :status, -> (status) { where status: status }
  # scope :location, -> (name) { where("name like ?", "#{name}%")}
  scope :index, -> (page) { order("make ASC").paginate(:page => page, :per_page => 10) }
  scope :only_makes, -> (make_parameter) { where("make like ?", "%#{make_parameter}%")}
  scope :search, -> (search) { where("make like ? OR model like ? OR year like ?", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%")}

  before_save :downcase_fields

   def downcase_fields
      self.name.downcase!
   end
end

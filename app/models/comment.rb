class Comment < ActiveRecord::Base
  belongs_to :truck
  validates :author, :presence => true
end

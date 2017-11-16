class Comment < ActiveRecord::Base
  belongs_to :truck
  validates :author, :comment, :presence => true
end

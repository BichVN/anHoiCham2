class Menu < ActiveRecord::Base
  belongs_to :user
  belongs_to :tag
  has_many :comments
  has_attached_file :pic
  has_attached_file :attach
  validates_attachment_file_name :pic, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  validates_attachment_file_name :attach, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end

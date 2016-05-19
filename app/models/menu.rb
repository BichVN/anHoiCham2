class Menu < ActiveRecord::Base
  default_scope -> { order(updated_at: :desc) }
  belongs_to :user
  belongs_to :tag
  has_many :comments

  has_many :foods
  accepts_nested_attributes_for :foods,
    :allow_destroy => true,
    :reject_if     => :all_blank

  validates :menuName, presence: true
  validates :content, presence: true

  has_attached_file :pic
  has_attached_file :attach
  validates_attachment_file_name :pic, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  validates_attachment_file_name :attach, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  mount_uploaders :imgs, ImgUploader
  acts_as_votable

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end

  def food_attributes=(food_attributes)
    food_attributes.each do |attributes|
      foods.build(attributes)
    end
  end
end

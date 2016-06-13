class Menu < ActiveRecord::Base
  default_scope -> { order(updated_at: :desc) }
  belongs_to :user
  has_many :menu_tags, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :foods, dependent: :destroy
  accepts_nested_attributes_for :foods,
    :allow_destroy => true,
    :reject_if     => :all_blank

  validates :menuName, presence: true
  validates :content, presence: true

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

  def get_list
    output = []
    str_decoded = URI.decode(self.imgs[0].url)
    str_url = str_decoded.match(/(.*\d)\//)[0]
    unless str_decoded.match(/\".*\"/).nil?
      str_param = str_decoded.match(/\".*\"/)[0]
      str_param = str_param.tr(' ','').tr('"','').tr(']','').tr('[','').split(',')
      str_param.each do |ex|
        output << str_url + ex
      end
    end
    return output
  end

  def has_tag tag
    !self.menu_tags.find_by(tag: tag).nil?
  end
end

class Tag < ActiveRecord::Base
  belongs_to :user
  has_many :menu_tags, dependent: :destroy

  validates :tag, presence: true
end

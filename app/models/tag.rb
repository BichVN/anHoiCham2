class Tag < ActiveRecord::Base
  belongs_to :user
  # has_many :menus
  has_many :menu_tags, dependent: :destroy
end

class Tag < ActiveRecord::Base
  belongs_to :user
  has_many :menus
end

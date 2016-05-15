class Food < ActiveRecord::Base
	belongs_to :menu
	has_many :post_recipe
	
	has_many :ingredients
	accepts_nested_attributes_for :ingredients,
    :allow_destroy => true,
    :reject_if     => :all_blank
end

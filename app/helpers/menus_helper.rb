module MenusHelper
  def add_food_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :foods, :partial => 'food', :object => food.new
    end
  end
end


json.array!(@post_recipes) do |post_recipe|
  json.extract! post_recipe, :id, :content
  json.url post_recipe_url(post_recipe, format: :json)
end

json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :quality
  json.url ingredient_url(ingredient, format: :json)
end

json.array!(@menus) do |menu|
  json.extract! menu, :id, :typeOfMenu, :content
  json.url menu_url(menu, format: :json)
end

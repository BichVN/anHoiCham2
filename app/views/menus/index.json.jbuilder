json.array!(@menus) do |menu|
  json.extract! menu, :id, :typeOfMenu, :content, :user_id
  json.url menu_url(menu, format: :json)
end

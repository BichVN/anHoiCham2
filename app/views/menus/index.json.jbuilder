json.array!(@menus) do |menu|
  json.extract! menu, :id, :menuName, :content, :user_id
  json.url menu_url(menu, format: :json)
end

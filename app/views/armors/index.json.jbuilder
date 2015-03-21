json.array!(@armors) do |armor|
  json.extract! armor, :id, :name, :rating, :wireless, :character_id
  json.url armor_url(armor, format: :json)
end

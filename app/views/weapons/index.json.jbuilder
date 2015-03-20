json.array!(@weapons) do |weapon|
  json.extract! weapon, :id, :name, :damage, :wireless, :ammo, :misc, :character_id
  json.url weapon_url(weapon, format: :json)
end

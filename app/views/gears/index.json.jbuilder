json.array!(@gears) do |gear|
  json.extract! gear, :id, :name, :rating, :wireless, :misc, :character_id
  json.url gear_url(gear, format: :json)
end

json.array!(@biowares) do |bioware|
  json.extract! bioware, :id, :name, :rating, :notes, :wireless, :essence, :character_id
  json.url bioware_url(bioware, format: :json)
end

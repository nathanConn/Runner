json.array!(@characters) do |character|
  json.extract! character, :id, :name, :sex, :body, :agility, :reaction, :strength, :willpower, :logic, :intuition, :charisma, :edge, :essence
  json.url character_url(character, format: :json)
end

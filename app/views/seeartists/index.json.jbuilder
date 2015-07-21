json.array!(@seeartists) do |seeartist|
  json.extract! seeartist, :id
  json.url seeartist_url(seeartist, format: :json)
end

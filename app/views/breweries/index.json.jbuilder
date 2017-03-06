json.array!(@breweries) do |brewery|
  json.extract! brewery, :name, :year
  json.beers do
    json.amount brewery.beers.count
  end
  json.status do
    json.active brewery.active
  end
end
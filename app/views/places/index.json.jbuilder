json.array!(@places) do |place|
  json.extract! place, :id, :name, :link, :address, :city, :state, :description
  json.url place_url(place, format: :json)
end

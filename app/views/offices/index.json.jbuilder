json.array!(@offices) do |office|
  json.extract! office, :id, :location
  json.url office_url(office, format: :json)
end

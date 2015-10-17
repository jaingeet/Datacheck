json.array!(@servicemen) do |serviceman|
  json.extract! serviceman, :id
  json.url serviceman_url(serviceman, format: :json)
end

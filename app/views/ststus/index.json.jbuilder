json.array!(@ststus) do |ststu|
  json.extract! ststu, :id, :name, :content
  json.url ststu_url(ststu, format: :json)
end

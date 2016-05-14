json.array!(@myforms) do |myform|
  json.extract! myform, :id, :name, :emailid, :phoneno
  json.url myform_url(myform, format: :json)
end

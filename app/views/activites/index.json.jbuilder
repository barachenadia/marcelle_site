json.array!(@activites) do |activite|
  json.extract! activite, :id, :title, :content
  json.url activite_url(activite, format: :json)
end

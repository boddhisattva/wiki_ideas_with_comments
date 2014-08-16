json.array!(@ideas) do |idea|
  json.extract! idea, :id, :name, :description
  json.url idea_url(idea, format: :json)
end

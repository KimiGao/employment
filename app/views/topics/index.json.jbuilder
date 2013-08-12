json.array!(@topics) do |topic|
  json.extract! topic, :identify, :title, :href, :date
  json.url topic_url(topic, format: :json)
end

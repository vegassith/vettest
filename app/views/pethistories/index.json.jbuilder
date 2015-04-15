json.array!(@pethistories) do |pethistory|
  json.extract! pethistory, :id
  json.url pethistory_url(pethistory, format: :json)
end

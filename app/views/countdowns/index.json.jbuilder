json.array!(@countdowns) do |countdown|
  json.extract! countdown, :title, :time, :picture, :link
  json.url countdown_url(countdown, format: :json)
end

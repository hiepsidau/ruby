json.array!(@coarses) do |coarse|
  json.extract! coarse, :id
  json.url coarse_url(coarse, format: :json)
end

json.array!(@baseurls) do |baseurl|
  json.extract! baseurl, :id, :baseurl, :name, :paging_parameter, :paging_max, :paging_add
  json.url baseurl_url(baseurl, format: :json)
end

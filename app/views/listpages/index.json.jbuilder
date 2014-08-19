json.array!(@listpages) do |listpage|
  json.extract! listpage, :id, :name, :url, :paging_parameter, :paging_max, :paging_add, :link_get_tag, :link_get_attribute, :link_get_value, :keyword, :details_pages, :csvname
  json.url listpage_url(listpage, format: :json)
end

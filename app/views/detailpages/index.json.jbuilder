json.array!(@detailpages) do |detailpage|
  json.extract! detailpage, :id, :detail_url, :need_propertys, :property_get_rules, :get_property
  json.url detailpage_url(detailpage, format: :json)
end

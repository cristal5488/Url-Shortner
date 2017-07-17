json.extract! url_mapping, :id, :longurl, :code, :created_at, :updated_at
json.url url_mapping_url(url_mapping, format: :json)

json.array!(@parsed_files) do |parsed_file|
  json.extract! parsed_file, :id, :name, :content
  json.url parsed_file_url(parsed_file, format: :json)
end

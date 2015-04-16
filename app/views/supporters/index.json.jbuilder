json.array!(@supporters) do |supporter|
  json.extract! supporter, :id, :firstname, :lastname, :group, :rank, :organization
  json.url supporter_url(supporter, format: :json)
end

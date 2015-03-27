json.array!(@contributions) do |contribution|
  json.extract! contribution, :id, :firstname, :lastname, :organization, :contribution, :admin_contribution_level_id
  json.url contribution_url(contribution, format: :json)
end

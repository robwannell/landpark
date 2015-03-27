json.array!(@admin_contribution_levels) do |admin_contribution_level|
  json.extract! admin_contribution_level, :id, :name, :rank
  json.url admin_contribution_level_url(admin_contribution_level, format: :json)
end

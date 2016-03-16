json.array!(@skillsets) do |skillset|
  json.extract! skillset, :id, :staff_id, :tool_id
  json.url skillset_url(skillset, format: :json)
end

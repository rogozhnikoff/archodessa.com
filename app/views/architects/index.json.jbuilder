json.array!(@architects) do |architect|
  json.extract! architect, :id, :name, :surname, :familyname, :avatar
  json.url architect_url(architect, format: :json)
end

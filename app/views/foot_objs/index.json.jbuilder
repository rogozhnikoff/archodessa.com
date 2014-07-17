json.array!(@foot_objs) do |foot_obj|
  json.extract! foot_obj, :id, :name, :enable, :body, :picture
  json.url foot_obj_url(foot_obj, format: :json)
end

json.array!(@arch_objects) do |arch_object|
  json.extract! arch_object, :id, :name, :avatar, :foundation, :status
  json.url arch_object_url(arch_object, format: :json)
end

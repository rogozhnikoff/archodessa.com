class Architect < ActiveRecord::Base
  has_many :arch_objects_architects
  has_many :arch_objects, through: :arch_objects_architects

  def get_name (architect)
    "#{:surname} #{:name[0]} #{:familyname[0]}"
  end
end

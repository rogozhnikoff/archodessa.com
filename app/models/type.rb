class Type < ActiveRecord::Base
  has_many :arch_objects_types
  has_many :arch_objects, through: :arch_objects_types
end

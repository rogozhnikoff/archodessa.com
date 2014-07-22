class Style < ActiveRecord::Base
  has_many :arch_objects_styles
  has_many :arch_objects, through: :arch_objects_styles
end

class Architect < ActiveRecord::Base
  has_many :arch_objects_architects
  has_many :arch_objects, through: :arch_objects_architects

  def get_name
    "#{self.surname} #{self.name[0]}. #{self.familyname[0]}."
  end
end

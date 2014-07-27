class Architect < ActiveRecord::Base
  has_many :arch_objects_architects
  has_many :arch_objects, through: :arch_objects_architects
  belongs_to :user

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def get_name
    "#{self.surname} #{self.name[0]}. #{self.familyname[0]}."
  end
  def get_full_name
    "#{self.surname} #{self.name} #{self.familyname}"
  end
end

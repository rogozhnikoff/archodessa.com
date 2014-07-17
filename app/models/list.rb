class List < ActiveRecord::Base
  has_and_belongs_to_many :arch_objects
end

class ArchObjectsType < ActiveRecord::Base
  belongs_to :arch_object
  belongs_to :type
end

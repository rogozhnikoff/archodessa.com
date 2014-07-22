class ArchObjectsArchitect < ActiveRecord::Base
  belongs_to :arch_object
  belongs_to :architect
end

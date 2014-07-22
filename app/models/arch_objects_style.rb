class ArchObjectsStyle < ActiveRecord::Base
  belongs_to :arch_object
  belongs_to :style
end

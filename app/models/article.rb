class Article < ActiveRecord::Base
  belongs_to :arch_object
  has_many :foot_objs
  has_many :resources
  has_many :thankses
end

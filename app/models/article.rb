class Article < ActiveRecord::Base
  belongs_to :arch_object
  belongs_to :user
  has_many :foot_objs
  has_many :resources
  has_many :thanks

  scope :moderate, -> { where(:status => 'На модерации') }
  scope :active, -> { where(:status => 'Активная') }
end

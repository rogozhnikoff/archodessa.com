class ArchObject < ActiveRecord::Base
  has_many :articles
  has_many :arch_objects_architects
  has_many :architects, through: :arch_objects_architects
  STATUS_TYPES = ['Памятник архитектуры и истории национального значения','Дуже крутий', 'Так собі']
end

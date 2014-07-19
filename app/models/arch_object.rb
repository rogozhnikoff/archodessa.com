class ArchObject < ActiveRecord::Base
  has_many :articles
  has_many :architects
  STATUS_TYPES = ['Крутий','Дуже крутий', 'Так собі']
end

class ArchObject < ActiveRecord::Base
  has_one :address
  has_many :articles
  has_many :architects
  has_and_belongs_to_many :lists
  STATUS_TYPES = ['Крутий','Дуже крутий', 'Так собі']
end

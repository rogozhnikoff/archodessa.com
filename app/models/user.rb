class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :arch_objects
  has_many :architects
  has_many :articles
  def role?(r)
     role.include? r.to_s if role
  end
end

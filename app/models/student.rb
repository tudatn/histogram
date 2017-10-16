class Student < ActiveRecord::Base
  has_many :enrolls
  has_many :courses, :through => :enrolls, :dependent => :destroy

  validates_presence_of :name

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  validates_presence_of :email
  validates_uniqueness_of :email
  # validates_format_of :email, :with => EMAIL_REGEX

end

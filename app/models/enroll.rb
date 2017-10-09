class Enroll < ActiveRecord::Base
  # rails 5: required is true
  belongs_to :student, required: true
  belongs_to :course, required: true
end

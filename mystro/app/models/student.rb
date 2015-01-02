class Student < ActiveRecord::Base

  # relationships
  has_many :lessons
  belongs_to :family
  # belongs_to :teacher

  # validations

  # scopes

end

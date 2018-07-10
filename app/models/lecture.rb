class Lecture < ApplicationRecord
  belongs_to :course, optional:true
end

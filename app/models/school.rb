class School < ActiveRecord::Base
  belongs_to :neighborhood

  validates :neighborhood, presence: true
  validates :nameSchool, presence: true
  validates :vacanciesSchool, presence: true

end

class Mother < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :children

validates :nameMother, presence: true
validates :occupationMother, presence: true
validates :maternityLeaveMother, presence: true
validates :addressMother, presence: true
validates :neighborhood_id, presence: true
validates :telephoneMother, presence: true
validates :salaryMother, presence: true
validates :salaryFamilyMother, presence: true
#validates :familyPurseMother, presence: true
validates :amountPeopleFamilyMother, presence: true



end

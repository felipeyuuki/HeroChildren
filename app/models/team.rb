class Team < ActiveRecord::Base
  belongs_to :school

  validates :descriptionTeam, presence: true
  validates :limitChildrenTeam, presence: true
  validates :nursery_id, presence: true
end

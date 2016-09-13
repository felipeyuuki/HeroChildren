class Neighborhood < ActiveRecord::Base
  belongs_to :sector

  validates :nameNeighborhood, presence: true
  validates :sector_id, presence: true

end

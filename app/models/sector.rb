class Sector < ActiveRecord::Base
    validates :codeSector, presence: true
    validates :descriptionSector, presence: true
end

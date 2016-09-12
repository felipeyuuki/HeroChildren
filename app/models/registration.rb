class Registration < ActiveRecord::Base
  belongs_to :child
  belongs_to :team
  belongs_to :school
end

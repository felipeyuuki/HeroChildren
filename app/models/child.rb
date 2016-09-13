class Child < ActiveRecord::Base
  belongs_to :team
  belongs_to :mother

  validates :nameChild, presence: true
  validates :birthDateChild, presence: true
  #validates :mother, presence: true
  validates :team_id, presence: true

end

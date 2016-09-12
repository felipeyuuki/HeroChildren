class Child < ActiveRecord::Base
  belongs_to :team
  belongs_to :mother
end

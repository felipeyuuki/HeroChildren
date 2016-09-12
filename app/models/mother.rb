class Mother < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :children
end

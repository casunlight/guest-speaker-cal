class Week < ActiveRecord::Base
  attr_accessible :ordinal
  has_many :days
end

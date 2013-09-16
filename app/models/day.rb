class Day < ActiveRecord::Base
  attr_accessible :date, :ordinal, :topics, :week_id
  belongs_to :week
  has_many :speakers
end

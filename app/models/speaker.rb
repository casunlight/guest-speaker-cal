class Speaker < ActiveRecord::Base
  attr_accessible :day_id, :lecture_description, :lecture_title, :name
  belongs_to :day
end

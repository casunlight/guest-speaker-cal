class Speaker < ActiveRecord::Base
  attr_accessible :day_id, :lecture_description, :lecture_title, :full_name
  belongs_to :day

  validates :day_id, presence: true
  validates :lecture_description, presence: true
  validates :lecture_title, presence: true
  validates :full_name, presence: true

end

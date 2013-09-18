class AdminCalendarController < ApplicationController

  def index
    @weeks = Week.order("id ASC")
    @cal_view = true
  end
end

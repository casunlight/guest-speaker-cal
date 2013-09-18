class CalendarController < ApplicationController

  def index
    @weeks = Week.order("id ASC")
  end
end

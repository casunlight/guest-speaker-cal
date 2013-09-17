class CalendarController < ApplicationController

  def index
    @weeks = Week.all
  end
end

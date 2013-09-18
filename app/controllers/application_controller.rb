class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_week_dates

  def get_week_dates
    @week_dates = []
    weeks = Week.order("id ASC")
    weeks.each do |week|
      @week_dates << week.days.order("id ASC").first.date
      @week_dates << week.days.order("id ASC").last.date
    end
  end
end

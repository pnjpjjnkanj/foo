class BazzController < ApplicationController
  def index
    @days = get_days_in_month 2
  end

  def get_days_in_month (month_num)
    (Date.new(Time.now.year,12,31).to_date<<(12-month_num)).day
  end
end

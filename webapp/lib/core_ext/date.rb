class Date
  def beginning_of_workday
    middle_of_day.beginning_of_workday
  end

  def end_of_workday
    middle_of_day.end_of_workday
  end
end

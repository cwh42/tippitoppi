class Time
  def beginning_of_workday
    if hour < 5
     yesterday
    else
      self
    end.change(hour: 5)
  end

  def end_of_workday
    if hour >= 5
      tomorrow
    else
      self
    end.change(
      hour: 4,
      min: 59,
      sec: 59,
      usec: Rational(999999999, 1000)
    )
  end
end

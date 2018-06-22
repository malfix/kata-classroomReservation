class Exercise
  def max_parallel_rooms(*time_ranges)
    timetable = {}
    time_ranges.each do |time_range|
      (time_range[0]...time_range[1]).to_a.each do |time_unit|
        timetable[time_unit] = (timetable[time_unit] || 0) + 1
      end
    end
    timetable.values.max || 0
  end
end

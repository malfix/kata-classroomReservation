require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'no room' do
    assert_equal(0, Exercise.new().max_parallel_rooms())
  end

  test 'single room' do
    assert_equal(1, Exercise.new().max_parallel_rooms([30, 75], [80, 150]))
  end

  test 'single room for sequence' do
      assert_equal(1, Exercise.new().max_parallel_rooms([30, 80], [80, 150]))
  end

  test 'multiple rooms' do
    assert_equal(2, Exercise.new().max_parallel_rooms([30, 75], [0, 50], [60, 150]))
  end
end

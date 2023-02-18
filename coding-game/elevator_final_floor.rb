# ******************

# The elevator floor display had a problem and displayed its log up/down of the day
# with brackets ( for go up one floor and ) for go down one floor.
# The elevator starts on floor 0 and there is no limit to the number of floors
# in both up (positive) and down (negative) directions.

def final_floor(floors)
  floor = 0
  floors.each_char do |c|
    if c == '('
      floor += 1
    elsif c == ')'
      floor -= 1
    end
  end
  floor
end

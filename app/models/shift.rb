class Shift < ApplicationRecord
    enum shift_name: { Day_shift: 0, Night_shift: 1, Holiday_day_shift: 2, Holiday_night_shift: 3}
end

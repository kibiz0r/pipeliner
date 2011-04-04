step :unpack_cinnamon_roll_tubes do
  produce :cinnamon_rolls do
    @cinnamon_roll_tubes.each do |cinnamon_roll_tube|
      cinnamon_rolls = cinnamon_roll_tube.unpack
      cinnamon_rolls.each do |cinnamon_roll|
        yield cinnamon_roll
      end
    end
  end
end

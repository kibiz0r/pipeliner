step :frost_cinnamon_rolls do
  # Using modify so that if frost! raises a DroppedTheCinnamonRollError,
  # the cinnamon roll doesn't continue. Should consume behave the same way?
  modify :cinnamon_rolls do |cinnamon_roll|
    cinnamon_roll.frost!
  end
end

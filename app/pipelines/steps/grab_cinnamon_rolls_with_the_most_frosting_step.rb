step :grab_cinnamon_rolls_with_the_most_frosting do
  filter :cinnamon_rolls do |cinnamon_roll|
    cinnamon_roll.frosting_level > 9000
  end
end

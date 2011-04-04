pipeline :make_cinnamon_rolls do
  constructor :cost_of_cinnamon_roll_tube, :oven

  input :money

  step :buy_cinnamon_roll_tubes
  step :preheat_oven
  step :unpack_cinnamon_roll_tubes
  step :bake_cinnamon_rolls
  step :frost_cinnamon_rolls
  step :grab_cinnamon_rolls_with_the_most_frosting
  step :eat_cinnamon_rolls
  step :check_bank_balance
end

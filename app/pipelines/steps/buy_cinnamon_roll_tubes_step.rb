pipeline_step :buy_cinnamon_roll_tubes do
  produce :cinnamon_roll_tubes do
    while @money > @cost_of_cinnamon_roll_tube
      yield CinnamonRollTube.new
      @money -= @cost_of_cinnamon_roll_tube
    end
  end
end

require "spec_helper"
require "make_cinnamon_rolls_pipeline"

describe Pipeline do
  let :oven do
    mock!
  end

  let :buy_cinnamon_roll_tubes do
    mock!
  end

  subject do
    pipe = pipeline :make_cinnamon_rolls,
      cost_of_cinnamon_roll_tube: 2.45,
      oven: oven
    pipe[:buy_cinnamon_roll_tubes] = buy_cinnamon_roll_tubes
    pipe
  end

  describe "#process" do
    it "kicks off the whole pipeline" do
      mock(buy_cinnamon_roll_tubes).process()
      subject.process money: 4.90
    end
  end
end

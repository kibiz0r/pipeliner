step :bake_cinnamon_rolls do
  # or every @batch_size?
  modify.every 5, :cinnamon_rolls do |cinnamon_rolls|
    @oven.bake cinnamon_rolls
  end
end

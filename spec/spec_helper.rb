require "pipeliner"
$LOAD_PATH << "."

RSpec.configure do |config|
  config.mock_with :rr
end

Dir.glob "app/pipelines/*_pipeline.rb" do |file|
  class_name = File.basename(file, ".rb").camelize
  autoload class_name, file
end

Dir.glob "app/pipelines/steps/*_step.rb" do |file|
  class_name = File.basename(file, ".rb").camelize
  autoload class_name, file
end

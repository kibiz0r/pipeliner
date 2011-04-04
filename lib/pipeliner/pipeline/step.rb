class Pipeline::Step
  def self.produce(name)
  end
end

def pipeline_step(name, params = { }, &block)
  class_name = "#{name.to_s.camelize}Step"
  if block_given?
    Object.const_set class_name, Class.new(Pipeline::Step, &block)
  else
    name.to_pipeline_step.new params
  end
end

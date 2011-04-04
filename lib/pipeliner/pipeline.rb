class Pipeline
  def self.input(name)
  end

  def self.step(name)
    steps << { name => name.to_pipeline_step }
  end
  
  def self.steps
    @steps ||= { }
  end

  def initialize()
    @steps = @@steps.clone
  end

  def process(args)
  end

  def []=(step_name, step)
    @steps[step_name] = step
  end
end

def pipeline(name, params = { }, &block)
  class_name = "#{name.to_s.camelize}Pipeline"
  if block_given?
    Object.const_set class_name, Class.new(Pipeline, &block)
  else
    class_name.constantize.new params
  end
end

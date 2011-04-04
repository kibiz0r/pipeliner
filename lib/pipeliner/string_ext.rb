class String
  def to_pipeline
    "#{self.camelize}PipelineStep".constantize
  end

  def to_pipeline_step
    "#{self.camelize}Step".constantize
  end
end

class Symbol
  def to_pipeline
    self.to_s.to_pipeline
  end

  def to_pipeline_step
    self.to_s.to_pipeline_step
  end
end

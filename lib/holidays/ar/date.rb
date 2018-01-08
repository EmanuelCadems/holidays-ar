class Date
  def holiday?
    a = ENV['HOLIDAYS'].split(',')
    a.include?(self.to_s)
  end
end

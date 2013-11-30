class SwitchBox
  attr_accessor :name, :switches
  def initialize(name)
    @name = name
    @switches = []
  end
end
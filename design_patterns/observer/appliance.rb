class Appliance
  attr_accessor :name, :state , :switch
  def initialize(name, switch = nil)
    @name = name
    @state = switch.nil? ? :off : switch.state
    @switch = switch
  end

  def update(changed_state)
    self.state = changed_state
  end
end
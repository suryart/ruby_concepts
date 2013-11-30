class Switch
  include Observer

  attr_reader :name, :state
  STATES = { :off => :on, :on => :off }

  def initialize(name, state = :off)
    super()
    @name = name
    @state = state
  end

  def state=(new_state)
    return if self.state == new_state
    @state = new_state
    notify_observers
  end

  def on?
    self.state == :on
  end

  def off?
    self.state == :off
  end

  def change_state
    self.state = STATES[state]
  end
end
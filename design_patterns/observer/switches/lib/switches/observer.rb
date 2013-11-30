module Observer
  attr_reader :observers
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers(method = :update)
    self.observers.map do |observer|
      if observer.respond_to?(method)
        observer.send(method, self.state)
      else
        raise NoMethodError, "undefinded method #{method.to_s}"
      end
    end
  end
end
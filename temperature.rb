class Temperature
  attr_reader :temperature, :celsius, :fahrenheit

  def initialize(temp)
    @temperature = temp[:f] || temp[:c]
    @fahrenheit = temp.has_key?(:f)
    @celsius = temp.has_key?(:c)
  end

  def to_fahrenheit
    if @fahrenheit == true
      @temperature
    else
      @temperature * (9.0/5.0)+32.0
    end
  end

  def to_celsius
    if @celsius == true
      @temperature
    else
      (@temperature - 32.0) * (5.0/9.0)
    end
  end

end

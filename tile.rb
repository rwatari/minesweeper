class Tile
  attr_accessor :value, :pos

  def initialize
    @value = 0
    @reveal = false
  end

  def bomb?
    @value == :bomb
  end

  def reveal!
    @reveal = true
  end

  def revealed?
    @reveal
  end

  def to_s
    if !@reveal
      "_"
    elsif @value.is_a?(Integer)
      @value.to_s
    else
      "*"
    end
  end
end

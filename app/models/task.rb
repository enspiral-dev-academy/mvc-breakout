class Task

  attr_reader :id, :content, :completed

  @@id = 0

  def initialize(content, completed)
    @@id += 1
    @id = @@id
    @content = content
    @completed = (completed == "true")
  end

  def to_s
    symbol = (@completed ?  "X" : " ")
    "[#{symbol}] #{@id}. - #{@content}"
  end

  def to_a
    [@id, @content, @completed]
  end

  def complete!
    @completed = true
  end

  def uncomplete!
    @completed = false
  end

end
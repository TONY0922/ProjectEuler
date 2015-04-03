class BaseCalculator

  class NoImplementationError < StandardError; end

  def initialize
    @answer = nil
    calc
  end

  def print_answer
    p @answer
  end

  private
  def calc
    raise NoImplementationError
  end
end

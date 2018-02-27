class Question

  attr_accessor :validate_question, :ask_question
  def initialize
    @number1 = rand(10)
    @number2 = rand(10)
    @validate_question = @number1 + @number2
    @ask_question = "What is the answer? of #{@number1} + #{@number2}"
  end

end



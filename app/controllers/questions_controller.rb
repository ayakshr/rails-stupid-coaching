class QuestionsController < ApplicationController
  def ask
  end

  ANSWERS = {
    1 => 'Great!',
    2 => 'Silly question, get dressed and go to work!',
    3 => 'I don\'t care, get dressed and go to work!'
  }

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      return @answer = ANSWERS[1]
    elsif @question.include? '?'
      return @answer = ANSWERS[2]
    else
      return @answer = ANSWERS[3]
    end
  end
end

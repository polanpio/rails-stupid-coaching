class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(sentence)
    work = "I am going to work"
    if_work = "Great!"
    if_question = "Silly question, get dressed and go to work!"
    default_answer = "I don't care, get dressed and go to work!"
    is_question?(sentence) ? if_question : (sentence === work ? if_work : default_answer)
  end

  def is_question?(sentence)
    sentence === nil ? false : sentence.end_with?("?")
  end
end

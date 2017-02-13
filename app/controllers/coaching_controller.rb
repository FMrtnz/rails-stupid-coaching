class CoachingController < ApplicationController
  def answer
    @result = params[:query]
    @answer = coach_answer_enhanced(@result)
  end

  def ask
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message == "Hello Coach !"
      return "blabla"
    elsif your_message == "I am going to work right now!".upcase
      return ""
    elsif (your_message.include? "?")
      return "I can feel your motivation! Silly question, get dressed and go to work!"
    else
      return "I can feel your motivation! I don't care, get dressed and go to work!"
    end
  end
end


class CoachingsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def coach_answer(your_message)
    if your_message.downcase == "i am going to work right now!"
      return ""
    elsif your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    regular_answer = coach_answer(your_message)
    if regular_answer != ""
      if your_message.upcase == your_message
        "I can feel your motivation! #{regular_answer}"
      else
        regular_answer
      end
      else
        ""
    end
  end

end

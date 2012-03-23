class QuestionsController < ApplicationController
  def index
    @questions = Question.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @questions.to_json(:include => {:tags => {:only => :name}, :user => {}}, :methods => :total_answers, :exclude => [:user_id])}
    end
    
  end
  
  def unanswered
    
  end
end

class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_and_belongs_to_many :tags
  
  def total_answers
    answers.length
  end
end

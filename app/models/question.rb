class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :options, dependent: :destroy
  validates :description, presence: true, length: { maximum: 50 }

  after_create :count_the_questions, if: :survey_id
  after_destroy :count_the_questions, if: :survey_id

  def count_the_questions
    puts "In Count questions"
     question_count = self.survey.questions.count
     #self.survey.update_attribute(questions_count: question_count)
  end
  accepts_nested_attributes_for :options
end

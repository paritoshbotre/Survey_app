class AddQuestionCountToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :questions_count, :integer
  end
end

class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :string
      t.string :type
      t.date :conducted_on
      t.integer :number_of_people
      t.timestamps null: false
    end
  end
end

class CreateSurveyTable < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :name
    end

    create_table :questions do |t|
      t.integer :survey_id
      t.string :content
    end

    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :response
    end
  end
end

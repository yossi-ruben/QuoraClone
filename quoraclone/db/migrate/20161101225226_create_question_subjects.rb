class CreateQuestionSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :question_subjects do |t|
      t.integer :question_id
      t.integer :subject_id

      t.timestamps
    end
  end
end

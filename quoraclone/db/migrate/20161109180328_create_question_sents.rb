class CreateQuestionSents < ActiveRecord::Migration[5.0]
  def change
    create_table :question_sents do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :question_id

      t.timestamps
    end
  end
end

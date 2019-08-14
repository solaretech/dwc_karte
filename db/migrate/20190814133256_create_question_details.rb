class CreateQuestionDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :question_details do |t|
      t.integer :question_id
      t.integer :category_id
      t.integer :mentor_id
      t.string :topic
      t.text :response

      t.timestamps
    end
  end
end

class CreateQuestionNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :question_notes do |t|
      t.integer :question_detail_id
      t.text :comment

      t.timestamps
    end
  end
end

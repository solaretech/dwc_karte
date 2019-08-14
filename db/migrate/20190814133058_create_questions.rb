class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :student_id
      t.string :image_id
      t.integer :reaction_status

      t.timestamps
    end
  end
end

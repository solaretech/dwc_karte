class CreateMentorTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :mentor_trainings do |t|
      t.integer :mentor_id
      t.integer :category_id
      t.integer :trainer_id
      t.text :detail

      t.timestamps
    end
  end
end

class AddTrainingDateToMentorTraining < ActiveRecord::Migration[5.2]
  def change
    add_column :mentor_trainings, :training_date, :datetime
  end
end

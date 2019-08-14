class CreateStudentCounsels < ActiveRecord::Migration[5.2]
  def change
    create_table :student_counsels do |t|
      t.integer :student_id
      t.integer :staff_id
      t.integer :type
      t.datetime :counselled_at
      t.text :detail
      t.boolean :is_done

      t.timestamps
    end
  end
end

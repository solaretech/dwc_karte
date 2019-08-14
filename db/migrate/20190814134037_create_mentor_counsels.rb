class CreateMentorCounsels < ActiveRecord::Migration[5.2]
  def change
    create_table :mentor_counsels do |t|
      t.integer :mentor_id
      t.integer :staff_id
      t.datetime :counselled_at
      t.text :detail
      t.boolean :is_done

      t.timestamps
    end
  end
end

class CreateMentorSRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :mentor_s_ranks do |t|
      t.integer :mentor_id
      t.integer :s_rank
      t.datetime :upgraded_at

      t.timestamps
    end
  end
end

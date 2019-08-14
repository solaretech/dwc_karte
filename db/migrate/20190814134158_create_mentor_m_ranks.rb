class CreateMentorMRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :mentor_m_ranks do |t|
      t.integer :mentor_id
      t.integer :m_rank
      t.datetime :upgraded_at

      t.timestamps
    end
  end
end

class JobsProfiles < ActiveRecord::Migration
  def change
     create_table :jobs_profiles do |t|
      t.belongs_to :job
      t.belongs_to :profile
    end
    add_index :jobs, :job_id
     add_index :profiles, :profile_id
  end
end

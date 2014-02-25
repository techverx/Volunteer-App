class JobsProfiles < ActiveRecord::Migration
  def change
     create_table :jobs_profiles do |t|
      t.belongs_to :job
      t.belongs_to :profile
    end
  end
end

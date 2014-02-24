class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :vacancies
      t.float :wage_per_hour
      t.text :description
      t.time :time_from
      t.time :time_to
      t.references :company, index: true
      t.boolean :publish

      t.timestamps
    end
  end
end

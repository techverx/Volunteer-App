class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :profession
      t.integer :user_id
      t.string :contact_no
      t.string :image
      t.timestamps
    end
  end
end

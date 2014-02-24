class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :logo
      t.string :website
      t.string :facebook_page
      t.string :linkedin
      t.text :description
      t.references :user, index: true
      t.references :country, index: true

      t.timestamps
    end
  end
end

class CreateStudentProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :student_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :bio
      t.string :website
      t.string :github_username
      t.string :linkedin_url
      t.string :photo
      t.string :cv
      t.string :city
      t.string :country
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCompanyProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :company_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :company_name
      t.string :logo
      t.text :description
      t.string :street
      t.string :suburb
      t.string :postcode
      t.string :country
      t.float :latitude
      t.float :longitude
      t.text :company_culture
      t.string :company_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

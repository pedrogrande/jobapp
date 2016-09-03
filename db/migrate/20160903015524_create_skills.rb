class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.references :skill_category, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

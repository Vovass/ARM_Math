class CreateThemeSectionTheorems < ActiveRecord::Migration[5.2]
  def change
    create_table :theme_section_theorems do |t|
      t.references :theme_section, foreign_key: true
      t.references :theorem, foreign_key: true

      t.timestamps
    end
  end
end

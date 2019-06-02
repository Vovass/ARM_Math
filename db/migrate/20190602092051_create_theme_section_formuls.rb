class CreateThemeSectionFormuls < ActiveRecord::Migration[5.2]
  def change
    create_table :theme_section_formuls do |t|
      t.references :theme_section, foreign_key: true
      t.references :formul, foreign_key: true

      t.timestamps
    end
  end
end

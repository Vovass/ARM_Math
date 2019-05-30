class CreateThemeSectionsFormuls < ActiveRecord::Migration[5.2]
  def change
    create_table :theme_sections_formuls do |t|
      t.integer :theme_section_id
      t.integer :formul_id
    end
  end
end

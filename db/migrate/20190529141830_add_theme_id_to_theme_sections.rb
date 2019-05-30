class AddThemeIdToThemeSections < ActiveRecord::Migration[5.2]
  def change
    #add_column :theme_sections, :theme_id, :integer
    add_belongs_to :theme_sections, :theme
  end
end

class AddThemeIdToTasks < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :tasks, :theme
  end
end

class AddDisciplineIdToThemes < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :themes, :discipline
  end
end

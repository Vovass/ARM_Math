class CreateScientists < ActiveRecord::Migration[5.2]
  def change
    create_table :scientists do |t|
      t.string :title
      t.text :info
      
      t.timestamps
    end
  end
end

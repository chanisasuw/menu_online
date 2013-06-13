class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string    :name,              :null => false
      t.text      :description,       :null => true
      t.timestamps
    end
  end
end

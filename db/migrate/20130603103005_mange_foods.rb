class MangeFoods < ActiveRecord::Migration
  def change
    create_table :foods  do |t|
      t.string    :name,              :null => false
      t.text      :short_comment,     :null => true
      t.text      :description,       :null => true
      t.decimal   :price,             default: 0.00
      t.boolean   :status,            default: false
      t.timestamps
    end
  end
end

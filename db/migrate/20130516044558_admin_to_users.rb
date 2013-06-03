class AdminToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :admin, default: false
      t.boolean :user, default: true
    end
  end
end

class AddWorkStatus < ActiveRecord::Migration[7.0]
  def change
    change_table :works do |t|
      t.integer :status, null: false
    end
  end
end

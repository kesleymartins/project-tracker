class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.datetime :begin, null: false
      t.datetime :end, null: false
      t.references :projects, :null, false, index: true, foreign_key: true

      t.timestamps
    end
  end
end

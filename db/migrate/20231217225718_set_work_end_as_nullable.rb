class SetWorkEndAsNullable < ActiveRecord::Migration[7.0]
  def up
    change_column_null :works, :end, true
  end

  def down
    change_column_null :works, :end, false
  end
end

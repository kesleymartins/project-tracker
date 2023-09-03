class RenameProjectReferenceColumnOnWorks < ActiveRecord::Migration[7.0]
  def change
    rename_column :works, :projects_id, :project_id
  end
end

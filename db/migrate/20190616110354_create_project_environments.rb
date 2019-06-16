class CreateProjectEnvironments < ActiveRecord::Migration[6.0]
  def change
    create_table :project_environments do |t|
      t.references :project, null: false, foreign_key: true
      t.string :name
      t.string :is_public

      t.timestamps
    end
  end
end

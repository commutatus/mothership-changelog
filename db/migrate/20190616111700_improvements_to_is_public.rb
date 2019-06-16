class ImprovementsToIsPublic < ActiveRecord::Migration[6.0]
  def change
  	change_column :projects, :is_public, :boolean, default: :false
  	remove_column :project_environments, :is_public
  	add_column :project_environments, :is_public, :boolean, default: :false
  	add_column :posts, :is_public, :boolean, default: :false
  end
end

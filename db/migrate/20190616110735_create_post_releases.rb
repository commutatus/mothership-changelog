class CreatePostReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :post_releases do |t|
      t.references :post, null: false, foreign_key: true
      t.references :project_environment, null: false, foreign_key: true

      t.timestamps
    end
  end
end

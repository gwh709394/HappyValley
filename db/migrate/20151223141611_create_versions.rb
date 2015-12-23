class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :user_id
      t.text :content
      t.references :versionable, :polymorphic => true
      t.string :name

      t.timestamps
    end
  end
end

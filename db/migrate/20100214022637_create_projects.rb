class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name, :limit => 30, :default => "", :null => false
      t.string :description, :default => "", :null => false
      t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end



# t.column "name", :string, :limit => 30, :default => "", :null => false
# t.column "description", :string, :default => "", :null => false
# t.column "homepage", :string, :limit => 60, :default => ""
# t.column "is_public", :boolean, :default => true, :null => false
# t.column "parent_id", :integer
# t.column "projects_count", :integer, :default => 0
# t.column "created_on", :timestamp
# t.column "updated_on", :timestamp

class CreateEmployeCcqSectors < ActiveRecord::Migration
  def self.up
    create_table :employe_ccq_sectors do |t|
      t.string :sector_code 
      t.string :sector_name_fr
      t.string :sector_name_en
      t.timestamps
    end
  end

  def self.down
    drop_table :employe_ccq_sectors
  end
end

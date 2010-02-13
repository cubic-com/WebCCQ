class CreateEmployeCcqQualifications < ActiveRecord::Migration
  def self.up
    create_table :employe_ccq_qualifications do |t|
      t.string :qualification_name_fr
      t.string :qualifaction_name_en

      t.timestamps
    end
  end

  def self.down
    drop_table :employe_ccq_qualifications
  end
end

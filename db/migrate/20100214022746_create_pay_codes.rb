class CreatePayCodes < ActiveRecord::Migration
  def self.up
    create_table :pay_codes do |t|
      t.string :paycode_name
      t.string :pay_code_description

      t.timestamps
    end
  end

  def self.down
    drop_table :pay_codes
  end
end

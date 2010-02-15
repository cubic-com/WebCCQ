class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :company_name
      t.string :first_name
      t.string :last_name,        :null => false
      t.string :address1
      t.string :address2
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code
      t.string :phone1
      t.string :phone2
      t.string :phone3
      t.string :email
      t.string :spoken_lang
      t.integer :created_by # User_id
      t.string :note
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end

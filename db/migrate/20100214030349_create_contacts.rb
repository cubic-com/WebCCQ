class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :title
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
      t.integer :customer_id
      t.integer :supplier_id
      t.string :note
      t.date :date_birth
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end

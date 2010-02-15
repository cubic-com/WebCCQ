class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
      t.string :supplier_name
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
      t.string :web
      t.string :spoken_lang
      t.integer :created_by # User_id
      t.string :note
      t.timestamps
    end
  end

  def self.down
    drop_table :suppliers
  end
end

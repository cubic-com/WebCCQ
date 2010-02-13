class CreateEmployes < ActiveRecord::Migration
  def self.up
    create_table :employes do |t|
      t.string :first_name,       :null => false
      t.string :last_name,        :null => false
      t.string :address1
      t.string :address2
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code
      t.string :ssn
      t.string :phone1
      t.string :phone2
      t.string :phone3
      t.string :email
      t.string :spoken_lang
      t.string :civil_status
      t.date :date_birth
      t.date :date_hire
      t.date :date_startemp
      t.date :date_endemp
      t.timestamps
    end
  end

  def self.down
    drop_table :employes
  end
end


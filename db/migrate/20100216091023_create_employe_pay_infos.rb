class CreateEmployePayInfos < ActiveRecord::Migration
  def self.up
    create_table :employe_pay_infos do |t|
      t.integer :employes_id
      t.decimal :salary, :precision => 6, :scale => 2, :null => false, :default => 0
      t.decimal :csst_rate,:precision => 4, :scale => 2, :null => false, :default => 0
      t.boolean :ei_eligible , :default => true   # Employment Insurance
      t.boolean :email_pay_stub , :default => false   # Pay stub by EMail
      t.string :bank_description
      t.string :bank_account        # Banque account number
      t.string :bank_identifier     # Banque id
      t.integer :account_salary     # Ledger account for Salary
      t.string :account_salary_description
      t.integer :account_welfare     # Ledger account for Salary
      t.string :account_welfare_description
      t.integer :account_vacation     # Ledger account for Salary
      t.string :account_vacation_description
      t.integer :account_CCQ     # Ledger account for Salary
      t.string :account_CCQ_description
      
      t.timestamps
    end
  end

  def self.down
    drop_table :employe_pay_infos
  end
end

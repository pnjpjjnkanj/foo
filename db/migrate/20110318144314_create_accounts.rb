class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.column :operation_type_id, :integer
      t.column :debitor_id, :integer
      t.column :creditor_id, :integer
      t.column :ammount, :decimal
      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end

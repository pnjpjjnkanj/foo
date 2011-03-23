class CreateMarks < ActiveRecord::Migration
  def self.up
    create_table :marks do |t|
      t.column :test_num_val, :integer
      t.column :user_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :marks
  end
end

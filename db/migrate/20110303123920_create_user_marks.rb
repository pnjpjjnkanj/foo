class CreateUserMarks < ActiveRecord::Migration
  def self.up
    create_table :user_marks do |t|
      t.column :user_id, :integer
      t.column :mark_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :user_marks
  end
end

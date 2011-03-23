class CreateFffs < ActiveRecord::Migration
  def self.up
    create_table :fffs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :fffs
  end
end

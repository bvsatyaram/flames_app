class CreateHitcounts < ActiveRecord::Migration
  def self.up
    create_table :hitcounts do |t|
      t.integer :count

      t.timestamps
    end

    Hitcount.create(:count => 18) if Hitcount.count == 0
  end

  def self.down
    drop_table :hitcounts
  end
end

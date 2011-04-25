class CreateScmails < ActiveRecord::Migration
  def self.up
    create_table :scmails do |t|
      t.string :recipient
      t.string :sendto
      t.string :tosendat
     

      t.timestamps
    end
  end

  def self.down
    drop_table :scmails
  end
end

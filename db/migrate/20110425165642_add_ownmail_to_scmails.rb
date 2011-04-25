class AddOwnmailToScmails < ActiveRecord::Migration
  def self.up
    add_column :scmails, :ownmail, :string 
  end

  def self.down
    remove_column :scmails, :ownmail
  end
end

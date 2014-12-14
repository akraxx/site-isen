class CreateUtilisateurs < ActiveRecord::Migration
  def self.up
    create_table :utilisateurs do |t|
      t.string :login
      t.string :pwd
      t.string :email
      t.timestamp :account_creation
    end
  end

  def self.down
    drop_table :utilisateurs
  end
end

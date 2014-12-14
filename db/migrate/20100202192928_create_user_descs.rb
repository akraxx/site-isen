class CreateUserDescs < ActiveRecord::Migration
  def self.up
    create_table :user_descs do |t|
    	t.string :name
		t.belongs_to :users
    end
  end

  def self.down
    drop_table :user_descs
    t.remove_belongs_to :users
  end
end

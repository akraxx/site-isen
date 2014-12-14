class CreateUtilisateursDescs < ActiveRecord::Migration
  def self.up
    create_table :utilisateurs_descs do |t|	
		t.string :name
		t.belongs_to :utilisateur
    end
  end

  def self.down
    drop_table :utilisateurs_descs
  end
end

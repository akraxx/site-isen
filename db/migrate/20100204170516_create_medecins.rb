class CreateMedecins < ActiveRecord::Migration
  def self.up
    create_table :medecins do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :medecins
  end
end

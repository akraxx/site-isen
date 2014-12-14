class CreateConsultations < ActiveRecord::Migration
  def self.up
    create_table :consultations do |t|
      t.references :medecin
      t.references :patient
      t.timestamp :date

      t.timestamps
    end
  end

  def self.down
    drop_table :consultations
  end
end

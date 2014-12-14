class CreateProduits < ActiveRecord::Migration
  def self.up
    create_table :produits do |t|
      t.string :nom
      t.text :description
      t.integer :category
      t.timestamp :date
    end
  end

  def self.down
    drop_table :produits
  end
end

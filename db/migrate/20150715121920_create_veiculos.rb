class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :type
      t.string :nome
      t.string :placa

      t.timestamps null: false
    end
  end
end

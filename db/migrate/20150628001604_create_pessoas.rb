class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :type
      t.string :cpf
      t.string :cnpj
      t.string :nome
      t.string :razao_social
      t.boolean :status

      t.timestamps null: false
    end
  end
end

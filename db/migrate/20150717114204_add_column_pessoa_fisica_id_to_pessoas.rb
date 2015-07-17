class AddColumnPessoaFisicaIdToPessoas < ActiveRecord::Migration
  def change
    add_reference :pessoas, :pessoa_fisica, index: true, foreign_key: true
  end
end

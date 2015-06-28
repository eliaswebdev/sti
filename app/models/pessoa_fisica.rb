class PessoaFisica < Pessoa

	validates :cpf, :nome, presence: true
end
class PessoaFisica < Pessoa
	## RELACIONAMENTOS
	has_many :dependentes
	accepts_nested_attributes_for :dependentes, allow_destroy: true

	## VALIDAÇÕES
	validates :cpf, :nome, presence: true
end
class PessoaJuridica < Pessoa

	validates :cnpj, :razao_social, presence: true
end
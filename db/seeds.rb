# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pessoas_fisicas = PessoaFisica.create!([
	{
		cpf: '435.671.160-29',
		nome: 'Zequinha da Silva'
	},
	{
		cpf: '412.921.771-28',
		nome: 'Zéfinha da Silva'
	},
	{
		cpf: '780.298.723-72',
		nome: 'Maricota da Silva'
	},
])

pessoas_juridicas = PessoaJuridica.create!([
	{
		cnpj: '64.776.683/0001-56',
		razao_social: 'Apple'
	},
	{
		cnpj: '51.662.852/0001-85',
		razao_social: 'Microsoft'
	},
	{
		cnpj: '70.818.366/0001-58',
		razao_social: 'Toinho Variedades'
	},
	{
		cnpj: '47.818.368/0001-25',
		razao_social: 'Walmart'
	}
])
$LOAD_PATH << File.join(File.dirname(__FILE__))
require 'test/unit'
require 'calculadora'

class CalculadoraTest < Test::Unit::TestCase

	def testDeveriaSomarUmMaisUm
		c = Calculadora.new
		assert c.soma(1,1) == 2, "!xobile"
	end

end

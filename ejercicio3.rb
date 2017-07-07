class Roulette
  attr_accessor :roulette
  def initialize(roulette)
    @roulette = roulette
  end

  def self.creacion(valor)
    r = []
    r << Roulette.new(valor)
  end

  def self.play(array, apostado)
    apuesta = apostado.to_i
    azar = array[rand(11)].to_i
    file = File.open('roulette_history.txt','a')
    file.puts "#{array[azar]} "
    file.close
    if array[azar] == apuesta
      file = File.open('winners.txt','a')
      file.puts array[azar]
      file.close
    end
  end

  def to_s
    "#{roulette}"
  end
end

def leer_historial
  file = File.open('roulette_history.txt', 'r')
  data = file.readlines.map { |ls| ls.split(' ') }
  puts data
end

x = (1..10).to_a
r = x.each { |i| Roulette.creacion(i) }
puts Roulette.play(r, 9)
leer_historial

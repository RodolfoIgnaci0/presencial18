# asdasdas
class Table
  attr_accessor :name, :recaudaciones
  def initialize(name, *recaudaciones)
    @name = name
    @recaudaciones = recaudaciones
  end

  def self.instancia
    # hash version mesas = {}
    mesas = []
    data = File.open('casino.txt', 'r') { |file| file.readlines }
    data.each do |mesa|
      ls = mesa.chomp.split(', ')
      mesas << Table.new(*ls)
      # hash version mesas[ls[0]] = ls[1].to_i, ls[2].to_i, ls[3].to_i, ls[4].to_i
    end
    mesas
  end

  def self.mayor(mesas)
    hash = {}
    mesas.each.with_index do |array, i|
      hash[:nombre] = array.name
      hash[:maximo] = array.recaudaciones.max
      hash[:dia] = i - 1
    end
    hash
  end

  def to_s
    "#{name} #{recaudaciones}"
  end

  def self.promedio(mesas)
    arr = []
    mesas.each { |table| arr << table.prom_days }
    arr.inject(0) { |sum, dia| sum + dia } / arr.length.to_f
  end

  def prom_days
    @recaudaciones.inject(0) { |sum, day| sum + day.to_i } / @recaudaciones.length.to_f
  end
end

mesas = Table.instancia
puts mesas
puts Table.mayor(mesas)
puts Table.promedio(mesas)

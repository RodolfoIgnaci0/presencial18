# ejercicio 2
require 'date'
class Course
  attr_accessor :course, :date_beginning , :date_ending
  def initialize(course, date_beginning, date_ending)
    @course = course
    @date_beginning = Date.parse(date_beginning)
    @date_ending = Date.parse(date_ending)
  end

  def self.read_file
    course = []
    data = File.open('cursos.txt','r'){ |file| file.readlines }
    data.each do |line|
      ls = line.chomp.split(', ')
      course << Course.new(*ls)
    end
    course
  end

  def self.course_before(file, filter = Date.today)
    arr = []
    file.each { |file| arr << "#{file.course} --> #{file.begin(filter)}" }
    arr
  end

  def begin(filter)
    arr = {}
    raise ArgumentError.new('fecha entregada mayor o igual a 2018-01-01') if filter == Date.parse('2018-01-01')
    if @date_beginning > filter
      arr[:antes] = "parte antes de fecha entregada"
    elsif @date_beginning < filter
      arr[:despues] = "parte despues de fecha entregada"
    else
      arr[:en] = "parte en la fecha entregada"
    end
  end

  def self.course_after(file, filter = Date.today)
    arr = []
    file.each { |file| arr << "#{file.course} --> #{file.ending(filter)}" }
    arr
  end

  def ending(filter)
    arr = {}
    raise ArgumentError.new('fecha entregada mayor o igual a 2018-01-01') if filter == Date.parse('2018-01-01')
    if @date_ending > filter
      arr[:antes] = "termina despues de fecha entregada"
    elsif @date_ending < filter
      arr[:despues] = "termina antes de fecha entregada"
    else
      arr[:en] = "termina en la fecha entregada"
    end
  end
end

file = Course.read_file
puts Course.course_before(file,filter = Date.parse('2017-05-21'))
puts ''
file.each{ |curso| print "#{curso.course} - Inicio: #{curso.date_beginning} - Termino: #{curso.date_ending} \n" }
puts ''
puts Course.course_after(file, filter = Date.parse('2017-12-29'))

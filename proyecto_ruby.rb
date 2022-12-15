class Reto5

  def initialize(file_name)
    @file_name = file_name
    @questions = questions_finder()
  end

  private
  def questions_finder
    questions_list = []
    question = {}
    answer = {}
    if File.file?(@file_name)
      File.readlines(@file_name, chomp: true).each do |line|
        if line
          if line.split(' ').last == "(Definicion)"
            question = {definition: line.split(' ')[0...-1].join(' ')}
          end
          if line.split(' ').last == "(Respuesta)"
            answer = {**question, answer: line.split(' ')[0...-1].join(' ')}
            questions_list.push(answer)
          end
        end
      end
    end
    questions_list
  end

  public
  def game
    puts 'Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!'
    i=0
    while  i < @questions.length
      puts 'Definición'
      puts @questions[i][:definition]
      print 'Adivina: '
      ans = gets.chomp.upcase
      while ans != @questions[i][:answer].upcase
        puts 'Incorrecto!, Trata de nuevo'
        print 'Adivina: '
        ans = gets.chomp.upcase
      end
      puts 'Correcto!'
      i += 1
    end
    puts 'Felicidades! Has completado el Reto 5!'
  end

end

nuevo_reto = Reto5.new("preguntas.txt")
nuevo_reto.game

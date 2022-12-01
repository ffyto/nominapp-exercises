class Reto_5


  def reto(file_name)
    questions_list = []
    question = {}
    answer = {}
    if File.file?(file_name)
      File.readlines(file_name, chomp: true).each do |line|
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

    puts 'Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!'

    i=0
    while  i < questions_list.length
      puts 'Definición'
      puts questions_list[i][:definition]
      print 'Adivina: '
      ans = gets.chomp.upcase
      while ans != questions_list[i][:answer].upcase
        puts 'Incorrecto!, Trata de nuevo'
        print 'Adivina: '
        ans = gets.chomp.upcase
      end
      puts 'Correcto!'
      i += 1
    end
    puts 'Felicidades! Has terminado este reto!'
  end

end

reto_5 = Reto_5.new
reto_5.reto('preguntas.txt')

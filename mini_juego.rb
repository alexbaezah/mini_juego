def start 
    puts "Estás en un cuarto oscuro"
    puts "Hay una puerta a tu izquierda y derecha"
    puts "¿Cuál eligirías?"

    print '> '
    choice = $stdin.gets.chomp

    if choice == 'izquierda'
        green_room
    elsif choice == 'derecha'
        honeycomb_room
    else
        puts 'Ded'
        puts 'te quedaste solo en el cuarto oscuro'
    end
end

def dead(why)
    puts why, 'game over' 
    exit(0)
end 


def green_room 
    20.times  {print '-'}
    puts "\nBienvenido al green_room"
    puts 'Estás dentro de un cuarto lleno de neonazis'
    puts 'Justo estás vestido de punk'
    puts '¿Cómo te moverás para salir del cuarto?'
    puts 'Puedes correr o pelear'
    nazi_moved = false 

    while true 
        print '> '
        choice = $stdin.gets.chomp

        if choice == 'correr'
            dead('fuiste bueno, te acorralaron')
        elsif choice == "pelear" && !nazi_moved
            gold_room
            nazi_moved = true
        else 
            puts "no sé qué quisiste decir con eso"
        end
    end
end

def gold_room 
    20.times {print '-'}
    puts "\nBienvenido al gold room"
    puts 'Este cuarto está lleno de oro'
    puts '¿Cuánto oro deseas?'
    print '> '

    choice = $stdin.gets.chomp
    if choice.include?("0") || choice.include?('1')
        how_much = choice.to_i
    else 
        dead('debías elegir números')
    end

    if how_much < 50
        puts 'Bien, no eres avaro'
        exit(0)
    else 
        dead('Avaro y bastardo')
    end
end

start
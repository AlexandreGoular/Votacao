puts ("Programa de Votação Honesta")
puts ("Digite 13 para Lula")
puts ("Digite 22 para Bolsonaro")
puts ("----------------------------------")
puts ("Ainda há pessoas a Votar S/N")
pessoas = gets.chomp
l = 0
b = 0
reset = 0
while pessoas != "n"
  puts ("Em quem Deseja Votar: ")
  voto = gets.chomp.to_i
  case voto
    when 13
      l = l + 1
      reset = reset + 1
      if (reset == 3)
        reset = 0
        l = l - 1
        b = b + 1
      end
    when 22
      b = b + 1
  end
  puts ("Ainda há pessoas a Votar S/N")
  pessoas = gets.chomp
end

if (l > b)
  puts ("O ganhador foi LULA com #{l} Votos, e o Perdedor foi BOLSONARO com #{b} Votos")
elsif (b > l)
  puts ("O ganhador foi BOLSONARO com #{b} Votos, e o Perdedor foi LULA com #{l} Votos")
end

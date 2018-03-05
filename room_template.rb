

require "highline/import"
require 'colorize'

$align = " ".ljust(33)
$center = "\n".ljust(30, "\n")
$map_align = " ".ljust(5)
$line_top = "#{$center}#{$align}_____________________________________________________\n".red
$line_bottom  ="#{$align}_____________________________________________________".red


# puts "#{$align}#{$map_align}     +—".green + "—".green + "—+".green
#
#
#
#
#
#
# puts "#{$align}#{$map_align}     | ".green + "#{room1}".white + " |".green
# puts "#{$align}#{$map_align} +—".green + "—".green + "—".green+"+—".green + "—".red + "—+".green
# puts "#{$align}#{$map_align} | ".green + "#{room3}".white + " | ".red + "#{room2}".white + " |".green
# puts "#{$align}#{$map_align} +—".green + "—".green + "—+".green+"—".green + "—".red + "—+".green
# puts "#{$align}#{$map_align}     | ".green + "#{room4}".white + " |".green
# puts "#{$align}#{$map_align}     +—".green + "—".red + "—+".green + "—".green + "—".green + "—+".green+ "—".green + "—".green + "—+".green
# puts "#{$align}#{$map_align}     | ".green + "#{room5}".white + " | ".red + "#{room6}".white + " | ".red + "#{room7}".white + " |".green
# puts "#{$align}#{$map_align}     +—".green + "—".green + "—+".green + "—".green + "—".red + "—+".green+ "—".green + "—".green + "—+".green
# puts "#{$align}#{$map_align}         | ".green + "#{room8}".white + " |".green
# puts "#{$align}#{$map_align}         +—".green + "—".red + "—+".green

row_a = {a1:"x", a2:" ", a3:" ", a4:" ", a5:" ", a6:" ", a7:" ", a8:" ", a9:" ", a10:" ", a11:" ", a12:" ", a13:" ", a14:" ", a15:" ", a16:" ", a17:" ", a18:" ", a19:" ", a20:" ", a21:" ", a22:" ", a23:" ", a24:" ", a25:" ", a26:" ", a27:" ", a28:" ", a29:" ", a30:" ", a31:" ", a32:" ", a33:" ", a34:" ", a35:" ", a36:"x"}

row = {a1:{a: " ", b: " ", c: "x"},
       a2:{a: " ", b: " ", c: " "},
       a3:{a: " ", b: " ", c: " "}
}



row2 = {a: " ", b: " ", c: "x"}
row3 = {a: " ", b: " ", c: "x"}

def map_eg(input, row)
  # puts "\n\n\n\n\n\n\n\n\n\n\n\n\"
row.each do |rows, col|

end

puts "\n\n\n\n#{$align}#{$map_align} | ".green  + " #{row[:a1][:a]}".white  + " #{row[:a1][:b]}".white + " #{row[:a1][:c]}".white
puts "#{$align}#{$map_align} | ".green  + " #{row[:a2][:a]}".white  + " #{row[:a2][:b]}".white + " #{row[:a2][:c]}".white
puts "#{$align}#{$map_align} | ".green  + " #{row[:a3][:a]}".white  + " #{row[:a3][:b]}".white + " #{row[:a3][:c]}".white

end

def west(input, row)
  row.each do |rows, col|
    case
    when input == "w"
      if    row[rows][:c] == "x"
            row[rows][:c] = " "
            row[rows][:b] = "x"
      elsif row[rows][:b] == "x"
            row[rows][:b] = " "
            row[rows][:a] = "x"
      end
    end
  end
end

def south(input, row)
  # row.each do |rows, col|
    case
    when input == "s"
      if    row[:a1][:c] == "x"
            row[:a1][:c] = " "
            row[:a2][:c] = "x"
      elsif row[:a2][:c] == "x"
            row[:a2][:c] = " "
            row[:a3][:c] = "x"
      end
    # end
  end
end

def north(input, row)
    row.each do |rows, col|
    case
    when input == "e"
      if    [:a3][col] == "x"
            [:a3][col] = " "
            [:a2][col] = "x"
      elsif [:a2][col] ==  "x"
            [:a2][col] = " "
            [:a1][col] = "x"
      end
    end
  end
end

def east(input, row)
    row.each do |rows, col|
    case
    when input == "e"
      if    row[rows][:a] == "x"
            row[rows][:a] = " "
            row[rows][:b] = "x"
      elsif row[rows][:b] ==  "x"
            row[rows][:b] = " "
            row[rows][:c] = "x"
      end
    end
  end
end

  input = " "
loop do

  system('clear')
map_eg(input, row)
input = ask("#{$align}#{$map_align} Please enter your direction: ").downcase
east(input, row)
west(input, row)
south(input, row)
north(input, row)
input = " "
end



# system('clear')
# puts "#{$align}________________________________________________________________________________________\n".red
# def Map
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
#     puts "#{$align}#{$map_align} | ".green  + " #{row_a[:a1]}".white  + " #{row_a[:a2]}".white + " #{row_a[:a3]}".white + " #{row_a[:a4]}".white + " #{row_a[:a5]}".white + " #{row_a[:a6]}".white + " #{row_a[:a7]}".white + " #{row_a[:a8]}".white + " #{row_a[:a9]}".white + " #{row_a[:a10]}".white + " #{row_a[:a11]}".white + " #{row_a[:a12]}".white + " #{row_a[:a13]}".white + " #{row_a[:a14]}".white + " #{row_a[:a15]}".white + " #{row_a[:a16]}".white + " #{row_a[:a17]}".white + " #{row_a[:a18]}".white + " #{row_a[:a19]}".white + " #{row_a[:a20]}".white + " #{row_a[:a21]}".white + " #{row_a[:a22]}".white + " #{row_a[:a23]}".white + " #{row_a[:a24]}".white + " #{row_a[:a25]}".white + " #{row_a[:a26]}".white + " #{row_a[:a27]}".white + " #{row_a[:a28]}".white + " #{row_a[:a29]}".white + " #{row_a[:a30]}".white + " #{row_a[:a31]}".white + " #{row_a[:a32]}".white + " #{row_a[:a33]}".white + " #{row_a[:a34]}".white + " #{row_a[:a35]}".white + " #{row_a[:a36]}".white +   " |".green
#
# end

# puts "#{$center} "

# puts "#{$align}________________________________________________________________________________________\n".red

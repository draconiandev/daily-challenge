MORSE_CODE = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--.."
}

def reverse_morse_code
  MORSE_CODE.invert
end

def morse_code(str)
  str.split.map { |word| morse_encode?(word) }.join(" /")
end

def morse_encode?(word)
  word.split("").map { |l| MORSE_CODE[l] }
end

puts morse_code("hello daily programmer good luck on the challenges today")

def normal_string(str)
  str.split.map { |code| morse_decode?(code) }.join(" ")
end

def morse_decode?(code)
  code.split.map { |l| reverse_morse_code[l] }
end

puts normal_string(".... . .-.. .-.. --- / -.. .- .. .-.. -.-- / .--. .-. --- --. .-. .- -- -- . .-. / --. --- --- -.. / .-.. ..- -.-. -.- / --- -. / - .... . / -.-. .... .- .-.. .-.. . -. --. . ... / - --- -.. .- -.--")

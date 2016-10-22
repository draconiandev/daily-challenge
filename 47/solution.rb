print 'Enter the offset value: '
@offset_value = gets.to_i

def encrypt_caesar_cipher(string, shift = @offset_value)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, " ") }
end

# print 'Enter a string to caeser cipher it: '
# string = gets
# puts encrypt_caesar_cipher(string).join

def decrypt_caesar_cipher(string, shift = -@offset_value.to_i)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, " ") }
end

# print 'Enter a string to caeser decipher it: '
# string = gets
# puts decrypt_caesar_cipher(string).join

stringy = "Spzalu - zayhunl dvtlu sfpun pu wvukz kpzaypibapun zdvykz pz uv ihzpz mvy h 
    zfzalt vm nvclyutlua.  Zbwyltl leljbapcl wvdly klypclz myvt h thukhal myvt aol 
    thzzlz, uva myvt zvtl mhyjpjhs hxbhapj jlyltvuf. Fvb jhu'a lewlja av dplsk 
    zbwyltl leljbapcl wvdly qbza 'jhbzl zvtl dhalyf ahya aoyld h zdvyk ha fvb! P 
    tlhu, pm P dlua hyvbuk zhfpu' P dhz hu ltwlylyvy qbza iljhbzl zvtl tvpzalulk 
    ipua ohk sviilk h zjptpahy ha tl aolf'k wba tl hdhf!... Ho, huk uvd dl zll aol 
    cpvslujl puolylua pu aol zfzalt! Jvtl zll aol cpvslujl puolylua pu aol zfzalt! 
    Olsw! Olsw! P't ilpun ylwylzzlk!"

puts decrypt_caesar_cipher(stringy).join

# Offset value for the above string is 7
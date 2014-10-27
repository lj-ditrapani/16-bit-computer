# Write file of 65K 16-bit values to use as RAM values
length = 2 ** 16
# Default value
a = Array.new(length) { 0x0407 }
# Big endian
s = a.pack("S>*")
File.open('program.exe', 'wb') do |f|
  f.write s
end

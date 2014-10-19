###
Author:  Lyall Jonathan Di Trapani
LJD 16-bit Computer
---------|---------|---------|---------|---------|---------|---------|--
###

# This needs to be inside a function
# so when compiled to javascript, can call function after window.onload
button = ljd.$('loadProgramButton')
button.onclick = () ->
  ram = ljd.makeRAM()
  video.ram = ram
  cpu.ram = ram
  video.update()

button = ljd.$('runComputerButton')
button.onclick = () ->
  cpu.run()
  video.update()
button = ljd.$('stepComputerButton')
button.onclick = () ->
  cpu.step()
button = ljd.$('resetComputerButton')
button.onclick = () ->
  cpu.reset()
  video.ram = cpu.ram
  video.update()

e = ljd.$("test")
e.innerHTML = "new"

c = ljd.$("screen")
c.style.height = '320px'
#c.style.height = '640px'
#c.style.height = '960px'
#c.style.height = '1280px'
ctx = c.getContext("2d")

getRAM_fromFile = (fileName) ->
  oReq = new XMLHttpRequest()
  oReq.open("GET", "test-programs/program.exe", true)
  oReq.responseType = "arraybuffer"

  oReq.onload = (oEvent) ->
    arrayBuffer = oReq.response  # Note: not oReq.responseText
    if arrayBuffer
      byteArray = new Uint8Array(arrayBuffer)
      s = "length = " + byteArray.length + ";  "
      s += " " + byteArray[0] + " " + byteArray[1]
      # alert(s)
      end = Math.pow(2, 16) - 1
      ram = (0 for _ in [0..end])
      for i in [0...(byteArray.length/2)]
        j = i * 2
        a = byteArray[j]
        b = byteArray[j + 1]
        ram[i] = (a << 8) | b
      s = "RAM length = #{ram.length}; #{ram[0]} #{ram[end]}"
      # alert s
      ram

  oReq.send(null)

newRam = -> (0 for _ in [0...Math.pow(2, 16)])

getRAM_fromFile('program.exe')

ram = ljd.makeRAM()
ram = []
video = new ljd.Video(ram, ctx, 4)
cpu = new ljd.cpu16bit.CPU
cpu.ram = ram


run = ->
  setTimeout(100, run)
  cpu.run
  video.update()

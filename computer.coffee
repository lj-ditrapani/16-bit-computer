###
Author:  Lyall Jonathan Di Trapani
LJD 16-bit Computer
---------|---------|---------|---------|---------|---------|---------|--
###


e = ljd.$("test")
e.innerHTML = "new"

c = ljd.$("screen")
c.style.height = '320px'
#c.style.height = '640px'
#c.style.height = '960px'
#c.style.height = '1280px'
ctx = c.getContext("2d")

ram = ljd.makeRAM()
video = new ljd.Video(ram, ctx, 4)
cpu = new ljd.cpu16bit.CPU
cpu.ram = ram


run = ->
  setTimeout(100, run)
  cpu.run
  video.update()

cpu.run()
video.update()

<!-- =============================================================== -->
The ljd 16-bit computer
=======================

A complete 16-bit computer
with the following:
- 64K memory address
- Color display
- Keyboard input
- Storage
- Primitive Networking
- NES-style audio output

Details on the design can be found in the
[16bit-computer.markdown](https://github.com/lj-ditrapani/16-bit-computer/blob/master/doc/16bit-computer.md)
file


Implementation
--------------
- Written in CoffeeScript
- Runs within a web-browser
- Ruby Sinatra back-end (planned)


Components
----------

- CPU:      <https://github.com/lj-ditrapani/16-bit-computer-cpu>
- Video:    <https://github.com/lj-ditrapani/16-bit-computer-video>
- Keyboard: <https://github.com/lj-ditrapani/16-bit-computer-keyboard>
- Storage:  <https://github.com/lj-ditrapani/16-bit-computer-storage>
- Networking: <https://github.com/lj-ditrapani/16-bit-computer-network>
- Audio:  Not yet even in design phase...


Software
--------

Assembler <https://github.com/lj-ditrapani/16-bit-computer-assembler>


Status
------

- The CPU is complete
- Video is tested and working
- The assembler is complete
- See [to-do list](https://github.com/lj-ditrapani/16-bit-computer/blob/master/doc/todo.md) for rough timeline

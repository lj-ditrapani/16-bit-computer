Complete working web LJD 16-bit computer
----------------------------------------
- Change sound to audio in all files
- Create basic assembler
- Create simplified acceptance testing set-up for whole computer
    - Load Binary RAM files from a directory into CPU RAM
    - Run program
    - Assert correct outputs (and RAM/registers/PC if necessary)
    - Binary files are stored in a folder
        - run static web server in folder
        - `python3 -m http.server`
        - `ruby2.0 -run -e httpd . -p 8000`
    - Load binary files through xmlHttpRequest
        - Load binary data into ArrayBuffer and wrap in Uint16Array
        - For testing, load binary files before tests are defined?
- Computer main loop
    - Frame interrupt vector
    - Shutdown if frame interrupt disabled AND halted (END)
- HTML/CSS/JS GUI interface
    - Load program from web server
    - Run program
    - Step program (if loaded but not already running)
    - Reset computer (clears ram/registers/PC)
- Keyboard input


Near term
---------
Ruby Sinatra web-app that allows
- login
- Uploading new programs
- Deleting programs
- Updating programs
- Loading program into computer (as above)
- Same client side functionality as above


Future
------
- Assembler
    - include labels, variables, reserve addresses,
      & set data values in RAM
    - Assembler directives
    - pseudo instructions (load word)
    - Pre-labeled addresses (video, keyboard, sprites, etc)
    - include ability to copy chunks of binary data into specific RAM
      locations.  For example, copy tile set into video tile set
      address.
- Storage
- Networking
- Video editor
    - Tile editor
    - Color editor
    - Grid editor (+ xy flip)
    - Sprite editor
- Audio
- Audio editor

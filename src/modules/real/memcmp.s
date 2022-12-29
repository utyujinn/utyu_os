memcpy:
  ;----------------------------
  ;Build Stack flame
  ;----------------------------

  push  bp
  mov   bp, sp

  
  ;----------------------------
  ;Save registar
  ;----------------------------
  
  push  bx
  push  cx
  push  dx
  push  si
  push  di

  ;----------------------------
  ;Get arguments
  ;----------------------------

  cld
  mov si,[bp + 4]
  mov di,[bp + 6]
  mov cx,[bp + 8]
  
  ;----------------------------
  ;Compare on bite unit
  ;----------------------------

  repe  cmpsb
  jnz   .10F
  mov   ax, 0
  jmp   .10E
.10F:
  mov   ax,-1
.10E:

  ;----------------------------
  ;Return registar
  ;----------------------------
  
  pop di
  pop si
  pop dx
  pop cx
  pop bx

  ;----------------------------
  ;Destroy stack flame
  ;----------------------------
  
  mov sp, bp
  pop bp

  ret

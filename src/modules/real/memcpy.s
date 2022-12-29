memcpy:
  ;----------------------------
  ;Build Stack flame
  ;----------------------------

  push  bp
  mov   bp, sp

  
  ;----------------------------
  ;Save registar
  ;----------------------------
  
  push  cx
  push  si
  push  di

  ;----------------------------
  ;Copy in bite unit
  ;----------------------------

  cld
  mov di,[bp + 4]
  mov si,[bp + 6]
  mov cx,[bp + 8]

  rep movsb
  
  ;----------------------------
  ;Return registar
  ;----------------------------
  
  pop di
  pop si
  pop cx

  ;----------------------------
  ;Destroy stack flame
  ;----------------------------
  
  mov sp, bp
  pop bp

  ret

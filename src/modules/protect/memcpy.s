memcpy:
  ;----------------------------
  ;Build Stack flame
  ;----------------------------

  push  ebp
  mov   ebp, esp

  
  ;----------------------------
  ;Save registar
  ;----------------------------
  
  push  ecx
  push  esi
  push  edi

  ;----------------------------
  ;Copy in bite unit
  ;----------------------------

  cld
  mov edi,[ebp + 8]
  mov esi,[ebp + 12]
  mov ecx,[ebp + 16]

  rep movsb
  
  ;----------------------------
  ;Return registar
  ;----------------------------
  
  pop edi
  pop esi
  pop ecx

  ;----------------------------
  ;Destroy stack flame
  ;----------------------------
  
  mov esp, ebp
  pop ebp

  ret

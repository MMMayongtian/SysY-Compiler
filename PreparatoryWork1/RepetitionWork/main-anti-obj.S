
main.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
   f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  16:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  1d:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  24:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
  2b:	00 00 00 
  2e:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  32:	b0 00                	mov    $0x0,%al
  34:	e8 00 00 00 00       	call   39 <main+0x39>
  39:	8b 75 f4             	mov    -0xc(%rbp),%esi
  3c:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
  43:	00 00 00 
  46:	b0 00                	mov    $0x0,%al
  48:	e8 00 00 00 00       	call   4d <main+0x4d>
  4d:	8b 75 fc             	mov    -0x4(%rbp),%esi
  50:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
  57:	00 00 00 
  5a:	b0 00                	mov    $0x0,%al
  5c:	e8 00 00 00 00       	call   61 <main+0x61>
  61:	8b 45 f8             	mov    -0x8(%rbp),%eax
  64:	3b 45 f0             	cmp    -0x10(%rbp),%eax
  67:	7d 34                	jge    9d <main+0x9d>
  69:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6c:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6f:	8b 45 f4             	mov    -0xc(%rbp),%eax
  72:	03 45 fc             	add    -0x4(%rbp),%eax
  75:	89 45 fc             	mov    %eax,-0x4(%rbp)
  78:	8b 75 fc             	mov    -0x4(%rbp),%esi
  7b:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
  82:	00 00 00 
  85:	b0 00                	mov    $0x0,%al
  87:	e8 00 00 00 00       	call   8c <main+0x8c>
  8c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  8f:	89 45 f4             	mov    %eax,-0xc(%rbp)
  92:	8b 45 f8             	mov    -0x8(%rbp),%eax
  95:	83 c0 01             	add    $0x1,%eax
  98:	89 45 f8             	mov    %eax,-0x8(%rbp)
  9b:	eb c4                	jmp    61 <main+0x61>
  9d:	8b 45 e8             	mov    -0x18(%rbp),%eax
  a0:	48 83 c4 20          	add    $0x20,%rsp
  a4:	5d                   	pop    %rbp
  a5:	c3                   	ret    

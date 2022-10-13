### **Yacc.y**

用于编译的测试文件

```makefile
make test //编译
make run  //执行
make clean//清理*.tab.c *.tab.h Yacc文件
```

### **YaccCal.y**

可以计算简单表达式版本（即基础要求的一二问）

### **YaccSuffix.y**

后缀表达式版本（即基础要求的第三问）

### **YaccId.y**

可识别**标识符**，可区分赋值语句**（无需打印）**与计算表达式（打印计算结果）

**不支持连等**。

```
已经和某Wan说过大体思路，不多bb
```

### YaccId2.y

可识别**标识符**，但无法区分赋值语句与计算表达式（**均打印**）

**支持连等**。

```yacas
expr    :   ID EQUAL expr { intTable[(int)$1] = $3;
                            $$ = $3;}
        |   expr ADD expr { $$ = $1 + $3; }
        |   expr SUB expr { $$ = $1 - $3; }
        |   expr MUL expr { $$ = $1 * $3; }
        |   expr DIV expr { $$ = $1 / $3; }
        |   LEFTP expr RIGHTP { $$ = $2; }
        |   SUB expr %prec UMINUS { $$ = -$2; }
        |   NUMBER { $$ = $1; }
        |   ID { $$ = intTable[(int)$1]; }
        ;
//等号左右标识符均为ID 最初以为是错的
//不能区分赋值语句和计算表达式（实际上好像也没规定必须区分）
//但它可以识别连等
```



### YaccId3.y

可识别**标识符**，可区分赋值语句**（无需打印）**与计算表达式（打印计算结果）

**支持连等**。

```yacas
lines   :   lines assign ';' {}
        |   lines expr ';' { printf("%f\n", $2);}
        |   lines ';'
        |
        ;
//关键改变
assign  :   RESULT EQUAL assign {intTable[(int)$1] = $3;
                                $$ = $3;}
        |   expr {$$ = $1;}
        ;
//添加一个assignment 赋值规则 用于处理连等号 
```


#include<stdio.h>
#define max_n 100
int main() {
	int a, b, i, t, n;
	//此处为注释
	a = 0;
	b = 1;
	i = 1;

	scanf("%d", &n);
	printf("%d\n", a);
	printf("%d\n", b);

	while (i < n)
	{
		t = b;
		b = a + b;
		printf("%d\n", b);
		a = t;
		i = i + 1;
	}

}

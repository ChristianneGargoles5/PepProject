// Christianne Gargoles
// Computer 416
// laizagargoles@yahoo.com
// 6 / 1 / 18
// File: fig0648.c
// Computer Systems, Fifth edition
// Figure 6.48

#include <stdio.h>
#include <stdlib.h>

struct node {
   int data;
   struct node *next;
};

int main() {
   struct node *first, *p, *first2, *p2;
   int value;
   first = 0;
   scanf("%d", &value);
   while (value != -9999) {
      p = first;
      first = (struct node *) malloc(sizeof(struct node));
      first->data = value;
      first->next = p;
      scanf("%d", &value);
   }
   for (p = first; p != 0; p = p->next) {
      printf("%d ", p->data);
   }
   first2 = 0;
   p2 = 0;
   for (p = first; p != 0; p = p->next) {
	   p2 = first2;
	   first2 = (struct node *) malloc(sizeof(struct node));
	   first2->data = p->data;
	   first2->next = p2;
   }
   for (p2 = first2; p2 != 0; p2 = p2->next) {
      printf("%d ", p2->data);
   }
   printf("\n");
   
   return 0;
}
active proctype rutina_con_livelock() {
   int x = 0;
   bool flag = false;
   do
   :: x < 10 && !flag ->
      x = x + 1;
      printf("Incrementando x: %d\n", x);
   :: x >= 10 && !flag ->
      flag = true;
      printf("Flag establecida.\n");
   :: x < 10 && flag ->
      printf("Esperando a que se restablezca la flag.\n");
   :: x >= 10 && flag ->
      flag = false;
      printf("Flag restablecida.\n");
   od
   printf("Rutina con livelock finalizada.\n");
}
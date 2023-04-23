active proctype rutina_sin_livelock() {
   int x = 0;
   do
   :: x < 10 ->
      x = x + 1;
      printf("Incrementando x: %d\n", x);
      /* realizar algún trabajo aquí */
   :: else ->
      break;
   od
   printf("Rutina sin livelock finalizada.\n");
}

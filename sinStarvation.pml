active proctype proceso_sin_starvation() {
    int i = 0;
    do
    :: i < 10 ->
        printf("Realizando tarea: %d\n", i);
        i++;
        /* realizar algún trabajo aquí */
        if
        :: i % 2 == 0 ->
            atomic {
                /* sección crítica */
                printf("Entrando en sección crítica: %d\n", i);
            }
        :: else ->
            /* hacer algo sin entrar en la sección crítica */
        fi
    :: else ->
        break;
    od
    printf("Proceso sin starvation finalizado.\n");
}

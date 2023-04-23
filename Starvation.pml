mtype = {P1, P2};

active proctype proceso1()
{
    do
    :: true ->
        /* Sección no crítica */
        printf("Proceso 1 está en la sección no crítica.\n");

        /* Entrada a la región crítica */
        atomic {
            /* Sección crítica */
            printf("Proceso 1 está en la sección crítica.\n");

            /* Simular acceso a un recurso compartido (archivo) */
            printf("Proceso 1 está accediendo a un archivo.\n");
            /* Hacer una pausa para simular acceso al archivo */
            /* ... */

            /* Salida de la región crítica */
            printf("Proceso 1 salió de la sección crítica.\n");
        }

        /* Sección no crítica */
        printf("Proceso 1 salió de la sección no crítica.\n");

        /* Hacer una pausa antes de volver a la sección crítica */
        /* ... */
    od
}

active proctype proceso2()
{
    do
    :: true ->
        /* Sección no crítica */
        printf("Proceso 2 está en la sección no crítica.\n");

        /* Esperar antes de intentar acceder al recurso */
        /* ... */

        /* Entrada a la región crítica */
        atomic {
            /* Sección crítica */
            printf("Proceso 2 está en la sección crítica.\n");

            /* Simular acceso a un recurso compartido (archivo) */
            printf("Proceso 2 está accediendo a un archivo.\n");
            /* Hacer una pausa para simular acceso al archivo */
            /* ... */

            /* Salida de la región crítica */
            printf("Proceso 2 salió de la sección crítica.\n");
        }

        /* Sección no crítica */
        printf("Proceso 2 salió de la sección no crítica.\n");

        /* Hacer una pausa antes de volver a la sección crítica */
        /* ... */
    od
}

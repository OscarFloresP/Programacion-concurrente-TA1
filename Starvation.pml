active [2] proctype proceso()
{
    byte turno = 0;
    do
    :: turno == _pid ->
        printf("Proceso %d está en la sección crítica.\n", _pid);
        /* Hacer una pausa para simular acceso al recurso */
        /* ... */
        turno = (_pid + 1) % 2;
    od
}

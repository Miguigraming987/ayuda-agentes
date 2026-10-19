# Reglas globales para agentes

## Formato de respuesta

- Todas las respuestas de cualquier modelo deben comenzar obligatoriamente con la palabra **Miguelito**.

## Memoria entre sesiones

- Al empezar cada sesión, lee `CONTEXTO.md` (si existe en la carpeta de trabajo) antes de responder a la primera petición.
- Al terminar una tarea o cuando el usuario se despida, actualiza `CONTEXTO.md` (si existe) con:
  - Qué se hizo.
  - Qué queda pendiente.
  - Decisiones tomadas y dudas abiertas.
- Mantén `CONTEXTO.md` breve: borra lo obsoleto y no acumules historial.

## Disparador "Crea Profesor"

- Si el usuario escribe "Crea Profesor" o "Crear Profesor", lee `{{CREA_PROFESOR}}` y sigue sus instrucciones en la carpeta de trabajo actual.

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

## Palabras clave disponibles

| Di exactamente | Para qué sirve |
|---|---|
| `Crea Profesor` o `Crear Profesor` | Crea en la carpeta actual `AGENTS.md`, `CONTEXTO.md`, `PISTAS.md` y la skill `profesor`. |
| `Guarda contexto` o `Guardar contexto` | Crea un archivo nuevo `contexto<N>.md` en la carpeta `contextos` del disco E. |
| `Comandos`, `Ayuda` o `Lista de comandos` | Muestra esta tabla. |
| `Dame una pista` o `Tengo una duda` | (Profesor) 3 pistas incrementales de un archivo en `PISTAS.md`. |
| `Como sigo?` o `Estoy atascado` | (Profesor) Te da solo el siguiente paso exacto. |
| `Dame la solucion` o `Solucion` | (Profesor) Solución completa con explicación. |

- Las tres últimas filas solo funcionan en carpetas donde ya se haya hecho `Crea Profesor`.
- Cuando el usuario escriba "Comandos", "Ayuda" o "Lista de comandos", muestra esta tabla completa.
- Siempre que muestres al usuario una lista de cosas que puede hacer, y al terminar de ejecutar un disparador, usa las palabras exactas de esta tabla y explica para qué sirve cada una.
- Si se añade un disparador nuevo, añádelo también a esta tabla.

## Disparador "Crea Profesor"

- Si el usuario escribe "Crea Profesor" o "Crear Profesor", lee `{{CREA_PROFESOR}}` y sigue sus instrucciones en la carpeta de trabajo actual.

## Disparador "Guarda contexto"

- Si el usuario escribe "Guarda contexto" o "Guardar contexto":
  1. Guarda en `E:\3. HERRAMIENTAS Y RECURSOS\13. AgentesIA\contextos`. Créala si no existe. Si la unidad `E:` no existe en este equipo, pregunta al usuario la ruta de la carpeta `13. AgentesIA`.
  2. Lista los archivos `contexto<N>.md` que ya haya y crea uno nuevo con el número siguiente (`contexto1.md` si no hay ninguno). Nunca sobrescribas uno existente.
  3. Contenido breve del archivo: título `# Contexto <N> - <carpeta de trabajo>`, y las secciones Estado actual, Hecho, Pendiente, Decisiones y dudas, y Última actualización (fecha).
  4. Al terminar, di la ruta del archivo creado. Este archivo no sustituye al `CONTEXTO.md` del proyecto.

# Comandos

Palabras exactas que puedes decirle al agente. Dentro de OpenCode, escribe `Comandos` para ver esta tabla.

| Di exactamente | Para qué sirve |
|---|---|
| `Crea Profesor` o `Crear Profesor` | Crea en la carpeta actual `AGENTS.md`, `CONTEXTO.md`, `PISTAS.md` y la skill `profesor`. |
| `Guarda memoria` o `Guardar memoria` | Crea un `memoria<N>.md` nuevo en la carpeta `memorias` (`E:\3. HERRAMIENTAS Y RECURSOS\13. AgentesIA\memorias`; `Y:\memorias` en la VM). |
| `Comandos`, `Ayuda` o `Lista de comandos` | Muestra la tabla de comandos. |
| `Dame una pista` o `Tengo una duda` | (Profesor) 3 pistas incrementales de un archivo en `PISTAS.md`. |
| `Como sigo?` o `Estoy atascado` | (Profesor) Solo el siguiente paso exacto. |
| `Dame la solucion` o `Solucion` | (Profesor) Solución completa con explicación. |

Las tres últimas solo funcionan en carpetas donde ya se hizo `Crea Profesor`.

## Contexto y memoria

- **Contexto** (`CONTEXTO.md`): estado de un proyecto. Vive dentro del proyecto y se lee solo al empezar.
- **Memoria** (`memoria<N>.md`): lo hablado y configurado con el agente. Vive en el disco E y se guarda con `Guarda memoria`.

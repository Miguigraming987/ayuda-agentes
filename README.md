# ayuda-agentes

Mi configuración global de OpenCode (canario "Miguelito", memoria con `CONTEXTO.md` y el profesor de DAW). Repositorio público: no hace falta autenticarse para instalarlo.

## Contenido

- `AGENTS.global.md`: reglas globales con el marcador `{{CREA_PROFESOR}}`, que el instalador sustituye por la ruta real.
- `crea-profesor.md`: prompt que crea `AGENTS.md`, `CONTEXTO.md`, `PISTAS.md` y la skill `profesor` en la carpeta actual.
- `crea-profesor.template.md`: plantilla con el marcador `{{SKILL}}` para regenerar `crea-profesor.md`.
- `skills/profesor/SKILL.md`: la skill del profesor.
- `instalar.ps1`: instala los archivos en `~\.config\opencode\` (Windows + PowerShell).

## Instalación en una línea (Windows 11)

Abre PowerShell y pega:

```powershell
irm https://raw.githubusercontent.com/Miguigraming987/ayuda-agentes/main/instalar.ps1 | iex
```

Se puede repetir sin problema: si ya había un `AGENTS.md` distinto, guarda una copia `AGENTS.md.bak`. No depende del nombre de usuario.

## Sin internet

Hay un clon en el disco E: `E:\3. HERRAMIENTAS Y RECURSOS\13. AgentesIA\ayuda-agentes`. Ejecuta desde ahí:

```powershell
powershell -ExecutionPolicy Bypass -File .\instalar.ps1
```

## Uso en clase

1. Arranca la VM del disco E.
2. Pega la línea de instalación (solo la primera vez en esa VM).
3. Abre OpenCode en un proyecto nuevo y escribe `Crea Profesor` (también vale `Crear Profesor`).

## Palabras clave

| Di exactamente | Para qué sirve |
|---|---|
| `Crea Profesor` o `Crear Profesor` | Crea en la carpeta actual `AGENTS.md`, `CONTEXTO.md`, `PISTAS.md` y la skill `profesor`. |
| `Guarda memoria` o `Guardar memoria` | Crea `memoria<N>.md` nuevo en `E:\3. HERRAMIENTAS Y RECURSOS\13. AgentesIA\memorias`. |
| `Comandos`, `Ayuda` o `Lista de comandos` | Muestra esta tabla. |
| `Dame una pista` o `Tengo una duda` | (Profesor) 3 pistas incrementales en `PISTAS.md`. |
| `Como sigo?` o `Estoy atascado` | (Profesor) Solo el siguiente paso exacto. |
| `Dame la solucion` o `Solucion` | (Profesor) Solución completa con explicación. |

Las tres últimas solo funcionan donde ya se hizo `Crea Profesor`. El agente muestra esta tabla al terminar un disparador o al ofrecer opciones, y añade una línea corta de recordatorio al final de casi todas las respuestas.

## Contexto y memoria

- **Contexto** (`CONTEXTO.md`): estado de un proyecto concreto. Vive dentro de cada proyecto y se lee solo al empezar.
- **Memoria** (`memoria<N>.md`): resumen de la configuración y de lo hablado con el agente. Vive en el disco E, fuera del repo: `E:\3. HERRAMIENTAS Y RECURSOS\13. AgentesIA\memorias\memoria1.md`, `memoria2.md`... Cada `Guarda memoria` crea el siguiente número sin sobrescribir. Si la VM no ve el disco como `E:`, el agente pregunta la ruta.

## Mantenimiento

Si cambias `skills/profesor/SKILL.md`, regenera `crea-profesor.md` sustituyendo `{{SKILL}}` de la plantilla por el contenido de la skill. Después haz commit y push, y actualiza el clon de E con `git pull`.

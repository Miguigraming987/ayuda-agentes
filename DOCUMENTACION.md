# Documentación

Cómo está organizada **mi** configuración (un ejemplo real). Para montar la tuya, sigue la guía [`CreacionCompletaProfesorDAW.md`](https://github.com/Miguigraming987/OpenCode-Maikel/blob/main/ReglasParaAgentes/ReglasPrimordiales/CreacionCompletaProfesorDAW.md).

## Qué es
Configuración global de OpenCode que se instala con una línea en cualquier PC o VM con Windows 11: reglas del agente, el profesor de DAW y un sistema de contexto y memoria.

## Organización

| Dónde | Qué hay |
|---|---|
| GitHub `ayuda-agentes` | Reglas, plantilla, skill, instalador y guías (este repo). |
| GitHub `OpenCode-Maikel` | Historial de prompts: `Skills/Prompts/V3_profesor.md` es la skill actual; `ReglasParaAgentes/ReglasPrimordiales/CreacionCompletaProfesorDAW.md` son los pasos completos. V2 y `profesor.md` están marcados como antiguos. |
| Disco E, `3. HERRAMIENTAS Y RECURSOS\13. AgentesIA` | `ayuda-agentes` (único clon local) y `memorias` (`memoria<N>.md`). |
| `~\.config\opencode\` | Lo que instala `instalar.ps1`: `AGENTS.md` global y `crea-profesor.md`. |
| Cada proyecto | `AGENTS.md`, `CONTEXTO.md`, `PISTAS.md` y `.opencode/skills/profesor/` (los crea `Crea Profesor`). |

## VM de VirtualBox
`W11_SERVE_C_2026-2027` tiene dos carpetas compartidas con montaje automático: `Z:` = `E:\CURSO_ACTUAL_2026` (proyectos) e `Y:` = `13. AgentesIA`. En la VM no se usa `E:`. Pasos en [`VM-PASOS.md`](VM-PASOS.md).

## Decisiones
- **Contexto vs memoria:** `CONTEXTO.md` es del proyecto; `memoria<N>.md` es del agente.
- **Memorias por marcador:** la carpeta `memorias` contiene `.memorias-agente`; el instalador y el agente la identifican por ese archivo, no por la letra de unidad.
- **Repo público** y commits con el email `noreply` de GitHub.
- **Una sola fuente:** comandos en `Comandos.md` (y en `AGENTS.global.md` para el agente), pasos de VM en `VM-PASOS.md`, `crea-profesor.md` se genera al instalar.

## Historial
- **2026-10-13:** primera skill del profesor en el proyecto UT4-Tarea1.
- **2026-10-16:** reglas globales, disparador `Crea Profesor` y repo de copia de seguridad.
- **2026-10-19:** repo público, instalación en una línea, memorias, carpetas compartidas de la VM, skill V3 y limpieza de duplicados.

## Pendiente
- Probar `Crea Profesor` y `Guarda memoria` dentro de la VM real.

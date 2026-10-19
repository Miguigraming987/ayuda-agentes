# ayuda-agentes

Configuración global para [OpenCode](https://opencode.ai) en Windows: reglas del agente (canario, contexto y memoria), un profesor de DAW que da pistas sin regalar la solución, y un instalador de una sola línea. Puedes copiarla y adaptarla a ti. Los datos propios van entre `<...>`, con **Mi ejemplo** después.

## Úsala como tuya

1. Haz fork de este repo.
2. Personaliza en tu fork (ver tabla).
3. Instala (PowerShell):
   ```powershell
   irm https://raw.githubusercontent.com/<TU_USUARIO>/ayuda-agentes/main/instalar.ps1 | iex
   ```
   *Mi ejemplo:* `irm https://raw.githubusercontent.com/Miguigraming987/ayuda-agentes/main/instalar.ps1 | iex`
4. En cualquier proyecto, abre OpenCode y escribe `Crea Profesor`.

Guía completa paso a paso: [`CreacionCompletaProfesorDAW.md`](https://github.com/Miguigraming987/OpenCode-Maikel/blob/main/ReglasParaAgentes/ReglasPrimordiales/CreacionCompletaProfesorDAW.md).

## Qué personalizar

| Dónde | Qué cambiar | Mi ejemplo |
|---|---|---|
| `AGENTS.global.md` | La palabra canario | `Miguelito` |
| `instalar.ps1` | `$base` (tu usuario y repo) y `$subs` (dónde buscar tu carpeta de memorias) | `Miguigraming987/ayuda-agentes` |
| Carpeta de memorias | Crea un archivo vacío `.memorias-agente` dentro | `E:\3. HERRAMIENTAS Y RECURSOS\13. AgentesIA\memorias` |

## Contenido

| Archivo | Para qué |
|---|---|
| [`Comandos.md`](Comandos.md) | Palabras exactas que puedes decir y qué hace cada una. |
| [`VM-PASOS.md`](VM-PASOS.md) | Lo específico de una VM de VirtualBox. |
| [`DOCUMENTACION.md`](DOCUMENTACION.md) | Cómo está organizada mi configuración. |
| `AGENTS.global.md` | Reglas globales (se instalan como `~\.config\opencode\AGENTS.md`). |
| `crea-profesor.template.md` | Plantilla del prompt `Crea Profesor`. |
| `skills/profesor/SKILL.md` | La skill del profesor. |
| `instalar.ps1` | Instala todo y genera `crea-profesor.md` juntando plantilla y skill. |

## Mantenimiento

Si cambias `skills/profesor/SKILL.md` o la plantilla, haz commit y push y vuelve a ejecutar el instalador.

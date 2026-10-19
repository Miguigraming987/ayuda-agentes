# ayuda-agentes

Mi configuración global de OpenCode: canario "Miguelito", contexto/memoria y el profesor de DAW. Repositorio público: no hace falta autenticarse.

## Instalar (Windows 11, PowerShell)

```powershell
irm https://raw.githubusercontent.com/Miguigraming987/ayuda-agentes/main/instalar.ps1 | iex
```

Se puede repetir sin problema. Luego, en cualquier proyecto, abre OpenCode y escribe `Crea Profesor`.

Sin internet: `powershell -ExecutionPolicy Bypass -File .\instalar.ps1` desde el clon de `E:\3. HERRAMIENTAS Y RECURSOS\13. AgentesIA\ayuda-agentes`.

## Contenido

| Archivo | Para qué |
|---|---|
| [`Comandos.md`](Comandos.md) | Palabras exactas que puedes decir y qué hace cada una. |
| [`VM-PASOS.md`](VM-PASOS.md) | Pasos de copiar y pegar para la VM de VirtualBox. |
| [`DOCUMENTACION.md`](DOCUMENTACION.md) | Resumen de qué se ha hecho y cómo está organizado. |
| `AGENTS.global.md` | Reglas globales (se instalan como `~\.config\opencode\AGENTS.md`). |
| `crea-profesor.template.md` | Plantilla del prompt `Crea Profesor`. |
| `skills/profesor/SKILL.md` | La skill del profesor. |
| `instalar.ps1` | Instala todo y genera `crea-profesor.md` juntando plantilla y skill. |

## Mantenimiento

Si cambias `skills/profesor/SKILL.md` o la plantilla, haz commit y push, y vuelve a ejecutar el instalador. Después actualiza el clon de E con `git pull`.

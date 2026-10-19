# Pasos en la VM (Windows 11) - copiar y pegar

La VM `W11_SERVE_C_2026-2027` ya tiene dos carpetas compartidas (montaje automático):

| Unidad en la VM | Carpeta en el PC (disco E) | Para qué |
|---|---|---|
| `Z:` | `E:\CURSO_ACTUAL_2026` | Tus proyectos del curso. Crea aquí los proyectos nuevos. |
| `Y:` | `E:\3. HERRAMIENTAS Y RECURSOS\13. AgentesIA` | `ayuda-agentes` (este repo) y `memorias`. |

En la VM no uses la letra `E:`: puede ser otro disco. Usa `Z:` e `Y:`.

## 0. Una sola vez: Guest Additions

Si `Z:` e `Y:` no aparecen en el Explorador: en el menú de la ventana de la VM, Dispositivos > Insertar imagen de CD de las Guest Additions, ejecuta `VBoxWindowsAdditions.exe` desde la unidad de CD y reinicia.

## 1. Programas (PowerShell, una sola vez)

```powershell
winget install OpenJS.NodeJS.LTS; winget install Git.Git; winget install GitHub.cli
```

Cierra PowerShell y ábrelo de nuevo. Luego:

```powershell
npm install -g @opencode/cli; gh auth login; git config --global user.name "Miguigraming987"; git config --global user.email "186576905+Miguigraming987@users.noreply.github.com"
```

Escribe `opencode` y, dentro, `/connect` para conectar tu proveedor de IA.

## 2. Mis reglas y el profesor (una sola vez)

```powershell
irm https://raw.githubusercontent.com/Miguigraming987/ayuda-agentes/main/instalar.ps1 | iex
```

Debe terminar con `Memorias en: Y:\memorias`. Si dice `AVISO`, revisa que `Y:` está montada y repite la línea.

Sin internet:

```powershell
powershell -ExecutionPolicy Bypass -File "Y:\ayuda-agentes\instalar.ps1"
```

## 3. Cada día

```powershell
cd Z:\mi-proyecto; opencode
```

Y escribe `Crea Profesor`. Para ver todo lo que puedes decir: `Comandos`.

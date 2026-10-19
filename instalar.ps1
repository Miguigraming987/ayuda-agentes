$ErrorActionPreference = "Stop"

$base = "https://raw.githubusercontent.com/Miguigraming987/ayuda-agentes/main"
$destino = Join-Path $env:USERPROFILE ".config\opencode"
$utf8 = New-Object System.Text.UTF8Encoding($false)

function Obtener($nombre) {
    if ($PSScriptRoot) {
        $local = Join-Path $PSScriptRoot $nombre
        if (Test-Path $local) { return [IO.File]::ReadAllText($local, $utf8) }
    }
    $resp = Invoke-WebRequest -Uri "$base/$nombre" -UseBasicParsing
    return $utf8.GetString($resp.RawContentStream.ToArray())
}

New-Item -ItemType Directory -Force -Path $destino | Out-Null

$agents = Join-Path $destino "AGENTS.md"
$prompt = Join-Path $destino "crea-profesor.md"

$textoAgents = (Obtener "AGENTS.global.md").Replace("{{CREA_PROFESOR}}", $prompt)
$textoPrompt = Obtener "crea-profesor.md"

if ((Test-Path $agents) -and ([IO.File]::ReadAllText($agents, $utf8) -ne $textoAgents)) {
    Copy-Item $agents "$agents.bak" -Force
    Write-Host "Copia de seguridad creada: $agents.bak"
}

[IO.File]::WriteAllText($agents, $textoAgents, $utf8)
[IO.File]::WriteAllText($prompt, $textoPrompt, $utf8)

Write-Host "Instalado en $destino"
Write-Host "Abre OpenCode en tu proyecto y escribe: Crea Profesor"

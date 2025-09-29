####ID DE UN PROCESO####

param(
    [string]$NombreProceso
)

if (-not $NombreProceso) {
    $NombreProceso = Read-Host "Introduce el nombre del proceso (ejemplo: notepad)"
}

try {
    $proceso = Get-Process -Name $NombreProceso -ErrorAction Stop
    Write-Output "El proceso '$NombreProceso' tiene la ID: $($proceso.Id)"
} catch {
    Write-Output "No se encontró ningún proceso con el nombre '$NombreProceso'"
}
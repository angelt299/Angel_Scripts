# angelsp31-3.ps1
# Menú de registros de eventos construido a partir de los registros de la máquina

# 1. Obtenemos los registros que tiene esta máquina (no se escriben a mano)
#    Solo los que tienen eventos y se pueden leer, para evitar errores
$registros = Get-WinEvent -ListLog * -ErrorAction SilentlyContinue |
             Where-Object { $_.RecordCount -gt 0 } |
             Sort-Object LogName

# 2. Bucle que repite el menú hasta que el usuario pulse 0
do {
    Write-Host "`n===== MENU DE REGISTROS DE EVENTOS =====" -ForegroundColor Cyan

    # Numeramos las opciones automáticamente a partir del índice del array
    for ($i = 0; $i -lt $registros.Count; $i++) {
        Write-Host ("{0}. {1}" -f ($i + 1), $registros[$i].LogName)
    }
    Write-Host "0. Salir"

    $opcion = Read-Host "`nElige una opcion"

    if ($opcion -eq "0") {
        # Salir
        Write-Host "Saliendo del script..." -ForegroundColor Yellow
    }
    elseif ($opcion -match '^\d+$' -and [int]$opcion -ge 1 -and [int]$opcion -le $registros.Count) {
        # Opción válida: obtenemos el registro elegido
        $log = $registros[[int]$opcion - 1]

        Write-Host "`nRegistro: $($log.LogName)" -ForegroundColor Green
        Write-Host "Numero de eventos: $($log.RecordCount)"
        Write-Host "Ultimos 12 eventos:`n"

        # Los 12 últimos registros
        Get-WinEvent -LogName $log.LogName -MaxEvents 12 -ErrorAction SilentlyContinue |
            Format-Table TimeCreated, Id, LevelDisplayName, ProviderName -AutoSize
    }
    else {
        # Opcion no valida
        Write-Host "Opcion no valida. Intentalo de nuevo." -ForegroundColor Red
    }

} while ($opcion -ne "0")
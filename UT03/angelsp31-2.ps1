#Script que muestra los inicios de sesión entre dos fechas.

# 1. Definición de parámetros de entrada obligatorios
param (
  [Parameter(Mandatory = $true)]
  [datetime]$FechaInicio,

  [Parameter(Mandatory = $true)]
  [datetime]$FechaFin
)

# 2. Consulta de eventos optimizada mediante FilterHashtable
# Buscamos en 'Security', evento 4624 (logon) dentro del rango de fechas.
$eventos = Get-WinEvent -FilterHashtable @{
  LogName   = 'Security'
  Id        = 4624
  StartTime = $FechaInicio
  EndTime   = $FechaFin
} -ErrorAction SilentlyContinue

# 3. Procesamiento de los eventos
$listado = foreach ($evento in $eventos) {
    
  # Extraemos el TargetUserName (suele ser el índice 5 en las propiedades del evento 4624)
  $usuario = $evento.Properties[5].Value

  # Filtramos para excluir SYSTEM. 
  # (Añado también DWM y UMFD para limpiar cuentas internas del administrador de ventanas).
  if ($usuario -ne 'SYSTEM' -and $usuario -notmatch 'DWM-' -and $usuario -notmatch 'UMFD-') {
        
    # 4. Formateo de salida creando un objeto personalizado
    [PSCustomObject]@{
      Dia     = $evento.TimeCreated.ToString('dd/MM/yyyy')
      Hora    = $evento.TimeCreated.ToString('HH:mm:ss')
      Usuario = $usuario
    }
  }
}

# Mostramos el resultado en formato tabla y ajustamos las columnas
$listado | Format-Table -AutoSize
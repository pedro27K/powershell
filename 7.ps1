##############################################
############  Buscar un proceso ##############
##############################################
param (
$proceso
)
$p=get-process
$l=$p.length
for ($i=0;$i -lt $l;$i++)

{

if($p[$i].ProcessName -eq $proceso)
    {
        Write-Host "proceso encontrado"
    }

}
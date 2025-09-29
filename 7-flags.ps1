##############################################
############  Buscar un proceso ##############
##############################################
param (
$proceso
)
$f=0
$p=get-process
$l=$p.length
for ($i=0;$i -lt $l;$i++)

{

    if($p[$i].ProcessName -eq $proceso)
        {
            $f=1
        }
}
 if($f -eq 1)
        {
        Write-Host "Proceso " $proceso " Encontrado "
        }
    else
    {
    Write-Host "Proceso " $proceso " NO Encontrado "
    }
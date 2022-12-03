<# Chase #>

Write-Host "Welcome to Zipper`n`n"

$path = Read-Host "Enter folder directory"

if (Test-Path -Path $path) {
    <# Action to perform if the condition is true #>

    $file_name = Read-Host "`nEnter Zip file name"
    
    # Execute the Compress-Archive command
    $compress_files = @{
        Path = $path
        CompressionLevel = "Fastest"
        DestinationPath = $path+"\"+$file_name+".zip"
    }

    Compress-Archive @compress_files


    Write-Host "`nZipped File successfully created and located to: "$path"\"$file_name".zip"

    Start-Process $path

}
else{
    Write-Host "`nDirectory not found!!!`n`n"
}

# Prevent from exit
Pause
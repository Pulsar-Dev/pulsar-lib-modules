# Specify the path to the main folder containing subfolders
$mainFolderPath = ""

# Get a list of subfolders in the main folder
$subfolders = Get-ChildItem -Path $mainFolderPath -Directory

# Loop through each subfolder and run the command
foreach ($subfolder in $subfolders) {
    $folderName = $subfolder.Name
    $command = "fastgmad create -folder $mainFolderPath/$folderName -out $mainFolderPath/$folderName.gma"

    # Execute the command
    Invoke-Expression $command
}
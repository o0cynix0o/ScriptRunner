# PATHTOSCRIPT1 - Replace with Path to the script you want the button to run.

Add-Type -AssemblyName System.Windows.Forms
$form = New-Object System.Windows.Forms.Form
$form.Text = "Script Runner"
$form.Size = New-Object System.Drawing.Size(300,200)

$button = New-Object System.Windows.Forms.Button
$button.Location = New-Object System.Drawing.Point(75,50)
$button.Size = New-Object System.Drawing.Size(150,50)
$button.Text = "Run Script"
$button.Add_Click({
    # Specify the path to the script you want to run
    $scriptPath = "PATHTOSCRIPT1"
    
    # Run the script
    & $scriptPath
})

$form.Controls.Add($button)

$form.ShowDialog() | Out-Null

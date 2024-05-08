Add-Type -AssemblyName System.Windows.Forms

# Define script paths
$scriptPath1 = "ScriptPath1"
$scriptPath2 = "ScriptPath2"
$scriptPath3 = "ScriptPath3"
$scriptPath4 = "ScriptPath4"

# Define button names
$buttonName1 = "ButtonName1"
$buttonName2 = "ButtonName2"
$buttonName3 = "ButtonName3"
$buttonName4 = "ButtonName4"

# Create form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Script Runner"
$form.Size = New-Object System.Drawing.Size(400, 400)

# Function to run script
function RunScript($scriptPath) {
    & $scriptPath
}

# Create buttons
for ($i = 1; $i -le 4; $i++) {
    $button = New-Object System.Windows.Forms.Button
    $button.Location = New-Object System.Drawing.Point(100, 50 + ($i - 1) * 60)
    $button.Size = New-Object System.Drawing.Size(200, 50)
    $button.Text = "Button $i"

    $scriptPath = Get-Variable -Name "scriptPath$i" -ValueOnly
    $buttonName = Get-Variable -Name "buttonName$i" -ValueOnly

    $button.Add_Click({
        RunScript $scriptPath
    })

    $form.Controls.Add($button)
}

# Show form
$form.ShowDialog()

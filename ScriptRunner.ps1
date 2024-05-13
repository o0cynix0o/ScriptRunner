Add-Type -AssemblyName System.Windows.Forms

function New-Button {
    param (
        [string]$Name,
        [string]$Text,
        [string]$ScriptPath,
        [int]$LocationX,
        [int]$LocationY
    )

    $button = New-Object System.Windows.Forms.Button
    $button.Location = New-Object System.Drawing.Point($LocationX, $LocationY)
    $button.Size = New-Object System.Drawing.Size(200, 50)
    $button.Text = $Text

    $button.Add_Click({
        & $ScriptPath
    })

    $button.Name = $Name

    return $button
}

$form = New-Object System.Windows.Forms.Form
$form.Text = "Script Runner v1.1.0" # App version number changed here
$form.Size = New-Object System.Drawing.Size(400, 400)

# Define script paths and button names here
$ScriptPaths = @(
    "ScriptPath1",
    "ScriptPath2",
    "ScriptPath3",
    "ScriptPath4"
)

$ButtonNames = @(
    "Button 1",
    "Button 2",
    "Button 3",
    "Button 4"
)

# Create buttons dynamically
for ($i = 0; $i -lt $ScriptPaths.Count; $i++) {
    $button = New-Button -Name "button$i" -Text $ButtonNames[$i] -ScriptPath $ScriptPaths[$i] -LocationX 100 -LocationY (50 + $i * 60)
    $form.Controls.Add($button)
}

$form.ShowDialog()

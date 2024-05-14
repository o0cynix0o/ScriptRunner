Add-Type -AssemblyName System.Windows.Forms

# Define script paths
$ScriptPaths = @(
    "G:\Scripts\Script1.ps1",
    "G:\Scripts\Script2.ps1",
    "G:\Scripts\Script3.ps1",
    "G:\Scripts\Script4.ps1"
)

# Define button names
$ButtonNames = @(
    "Button 1",
    "Button 2",
    "Button 3",
    "Button 4"
)

# Create form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Script Runner"
$form.Size = New-Object System.Drawing.Size(300, 275)
$form.StartPosition = "CenterScreen"

# Create buttons
for ($i = 0; $i -lt $ScriptPaths.Count; $i++) {
    $button = New-Object System.Windows.Forms.Button
    $button.Location = New-Object System.Drawing.Point(50, (30 + $i * 50))
    $button.Size = New-Object System.Drawing.Size(200, 30)
    $button.Text = $ButtonNames[$i]
    
    # Define click event handler for each button
    switch ($i) {
        0 { $button.Add_Click({ & $ScriptPaths[0] }) }
        1 { $button.Add_Click({ & $ScriptPaths[1] }) }
        2 { $button.Add_Click({ & $ScriptPaths[2] }) }
        3 { $button.Add_Click({ & $ScriptPaths[3] }) }
    }

    $form.Controls.Add($button)
}

# Show form
$form.ShowDialog() | Out-Null

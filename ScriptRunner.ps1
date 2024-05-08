# Create a GUI with four buttons
Add-Type -AssemblyName System.Windows.Forms
$form = New-Object System.Windows.Forms.Form
$form.Text = "Script Runner"
$form.Size = New-Object System.Drawing.Size(400,300)

# Define the script paths
$scriptPath1 = "C:\Path\to\your\script1.ps1"
$scriptPath2 = "C:\Path\to\your\script2.ps1"
$scriptPath3 = "C:\Path\to\your\script3.ps1"
$scriptPath4 = "C:\Path\to\your\script4.ps1"

# Create the first button
$button1 = New-Object System.Windows.Forms.Button
$button1.Location = New-Object System.Drawing.Point(100, 50)
$button1.Size = New-Object System.Drawing.Size(200, 50)
$button1.Text = "Run Script 1"

# Add Click event for the first button
$button1.Add_Click({
    & $scriptPath1
})

# Add the first button to the form
$form.Controls.Add($button1)

# Create the second button
$button2 = New-Object System.Windows.Forms.Button
$button2.Location = New-Object System.Drawing.Point(100, 110)
$button2.Size = New-Object System.Drawing.Size(200, 50)
$button2.Text = "Run Script 2"

# Add Click event for the second button
$button2.Add_Click({
    & $scriptPath2
})

# Add the second button to the form
$form.Controls.Add($button2)

# Create the third button
$button3 = New-Object System.Windows.Forms.Button
$button3.Location = New-Object System.Drawing.Point(100, 170)
$button3.Size = New-Object System.Drawing.Size(200, 50)
$button3.Text = "Run Script 3"

# Add Click event for the third button
$button3.Add_Click({
    & $scriptPath3
})

# Add the third button to the form
$form.Controls.Add($button3)

# Create the fourth button
$button4 = New-Object System.Windows.Forms.Button
$button4.Location = New-Object System.Drawing.Point(100, 230)
$button4.Size = New-Object System.Drawing.Size(200, 50)
$button4.Text = "Run Script 4"

# Add Click event for the fourth button
$button4.Add_Click({
    & $scriptPath4
})

# Add the fourth button to the form
$form.Controls.Add($button4)

$form.ShowDialog() | Out-Null

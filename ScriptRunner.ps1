Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = "Script Runner"
$form.Size = New-Object System.Drawing.Size(400,400)

$scriptPath1 = "ScriptPath1"
$scriptPath2 = "ScriptPath2"
$scriptPath3 = "ScriptPath3"
$scriptPath4 = "ScriptPath4"

$buttonname1 = "Name Your Button Here"
$buttonname2 = "Name Your Button Here"
$buttonname3 = "Name Your Button Here"
$buttonname4 = "Name Your Button Here"

$button1 = New-Object System.Windows.Forms.Button
$button1.Location = New-Object System.Drawing.Point(100, 50)
$button1.Size = New-Object System.Drawing.Size(200, 50)
$button1.Text = "$buttonname1"

$button1.Add_Click({
    & $scriptPath1
})

$form.Controls.Add($button1)

$button2 = New-Object System.Windows.Forms.Button
$button2.Location = New-Object System.Drawing.Point(100, 110)
$button2.Size = New-Object System.Drawing.Size(200, 50)
$button2.Text = "$buttonname2"

$button2.Add_Click({
    & $scriptPath2
})

$form.Controls.Add($button2)

$button3 = New-Object System.Windows.Forms.Button
$button3.Location = New-Object System.Drawing.Point(100, 170)
$button3.Size = New-Object System.Drawing.Size(200, 50)
$button3.Text = "$buttonname3"

$button3.Add_Click({
    & $scriptPath3
})

$form.Controls.Add($button3)

$button4 = New-Object System.Windows.Forms.Button
$button4.Location = New-Object System.Drawing.Point(100, 230)
$button4.Size = New-Object System.Drawing.Size(200, 50)
$button4.Text = "$buttonname4"

$button4.Add_Click({
    & $scriptPath4
})

$form.Controls.Add($button4)

$form.ShowDialog()

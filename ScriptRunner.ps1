Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = "Script Runner"
$form.Size = New-Object System.Drawing.Size(400,400)

$scriptPath1 = "G:\Scripts\Testing\EmbyRestart\Emby Restart.ps1"
$scriptPath2 = "G:\Scripts\Testing\qBittorrentRestart\qBittorrent Restart.ps1"
$scriptPath3 = "G:\Scripts\Testing\MusicDownloader\MusicDownloader.ps1"
$scriptPath4 = "G:\Scripts\Testing\VideoDownloader\VideoDownloader.ps1"

$button1 = New-Object System.Windows.Forms.Button
$button1.Location = New-Object System.Drawing.Point(100, 50)
$button1.Size = New-Object System.Drawing.Size(200, 50)
$button1.Text = "Emby Restart"

$button1.Add_Click({
    & $scriptPath1
})

$form.Controls.Add($button1)

$button2 = New-Object System.Windows.Forms.Button
$button2.Location = New-Object System.Drawing.Point(100, 110)
$button2.Size = New-Object System.Drawing.Size(200, 50)
$button2.Text = "qBittorrent Restart"

$button2.Add_Click({
    & $scriptPath2
})

$form.Controls.Add($button2)

$button3 = New-Object System.Windows.Forms.Button
$button3.Location = New-Object System.Drawing.Point(100, 170)
$button3.Size = New-Object System.Drawing.Size(200, 50)
$button3.Text = "Music Downloader"

$button3.Add_Click({
    & $scriptPath3
})

$form.Controls.Add($button3)

$button4 = New-Object System.Windows.Forms.Button
$button4.Location = New-Object System.Drawing.Point(100, 230)
$button4.Size = New-Object System.Drawing.Size(200, 50)
$button4.Text = "Video Downloader"

$button4.Add_Click({
    & $scriptPath4
})

$form.Controls.Add($button4)

$form.ShowDialog()

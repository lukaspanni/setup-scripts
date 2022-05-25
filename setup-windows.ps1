$programs = @(
	"Python.Python.3",
	"OpenJS.NodeJS",
	"Microsoft.dotnet",
	"Microsoft.OpenJDK.17",
  	"Docker.DockerDesktop",
  	"Git.Git",
  	"GitHub.cli",
	"Microsoft.PowerShell",
	"JanDeDobbeleer.OhMyPosh",
	"Google.AndroidStudio",
	"JetBrains.IntelliJIDEA.Ultimate",
	"Microsoft.VisualStudioCode",
	"Microsoft.PowerToys",
	"geradog.gsudo",
	"M2Team.NanaZip",
	"Mozilla.Firefox",
  	"Google.Chrome",
	"Microsoft.Office",
	"Anki.Anki",
	"Notion.Notion",
	"Spotify.Spotify",
	"Canva.Canva",
);

Foreach ($prg in $programs){
    $installed = winget list --exact -q $prg
    if (![String]::Join("", $installed).Contains($prg)) {
        Write-host "Install:" $prg
        winget install --exact --silent $prg    
    }
}

Write-host "Install finished"

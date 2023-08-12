@echo off
:menu
cls
color C
echo Ceci est pour setup votre espace de travail pour Forge 1.7.10
echo Choisissez une option:

start java -version

# Vérification de l'installation de Java

if (-not (Get-Command java -ErrorAction SilentlyContinue)) {
    # Lien de téléchargement JDK 8
    $jdkDownloadLink = "https://cdn.discordapp.com/attachments/1103360574601048105/1140027489914200215/jdk-8u202-windows-x64.exe"
    
    # Téléchargement du JDK 8
    $jdkInstaller = "jdk-8u202-windows-x64.exe"
    Invoke-WebRequest -Uri $jdkDownloadLink -OutFile $jdkInstaller

    # Exécution de l'installateur
    Start-Process -Wait -FilePath $jdkInstaller

    # Vérification de l'installation
    if (Test-Path (Join-Path $env:ProgramFiles "Java\jdk1.8.0_XXX")) {
        Write-Host "JDK 8 a été installé avec succès."
    } else {
        Write-Host "L'installation de JDK 8 a échoué."
        Write-Host "Clique sur ce lien pour télécharger JDK: https://cdn.discordapp.com/attachments/1103360574601048105/1140027489914200215/jdk-8u202-windows-x64.exe"
    }

    # Suppression de l'installateur téléchargé
    Remove-Item $jdkInstaller -Force
} else {
    Write-Host "JDK 8 est déjà installé."
}


echo 1. Eclipse (Conseiller)
echo 2. IDEA

set /p choix=Entrez votre choix (1/2):

if "%choix%"=="1" (
    rem Remplacez la commande ci-dessous par la commande réelle que vous souhaitez exécuter pour l'option 1
    gradlew clean setDecompWorkspace eclipse
    echo Lancement de la première commande...
    start gradlew setupDecompWorkspace
    echo Lancement de la 2eme commande...
    start gradlew build
    pause
) else if "%choix%"=="2" (
    rem Remplacez la commande ci-dessous par la commande réelle que vous souhaitez exécuter pour l'option 2
    gradlew clean setDecompWorkspace idea
    echo Lancement de la première commande...
    start gradlew setupDecompWorkspace
     echo Lancement de la 2eme commande...
     start gradlew build
    pause
) else (
    echo Choix invalide. Veuillez entrer 1 ou 2.
    goto menu
)





set /p continuer=Voulez-vous continuer ? (oui):
if /i "%continuer%"=="oui" (
echo Vous avez fini !
)

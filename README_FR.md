Présentation

Ce dépôt contient un script Bash conçu pour automatiser l'installation de GrapheneOS sur tout appareil Google Pixel. Le script effectue les mises à jour système nécessaires, installe les paquets requis et guide l'utilisateur tout au long du processus d'installation.

Prérequis

Avant d'exécuter le script, assurez-vous de disposer des éléments suivants :

* Un ordinateur exécutant une distribution Linux basée sur Debian (par exemple, Ubuntu).

* Un appareil Pixel.

* Un câble USB pour connecter votre appareil à l'ordinateur.

* Des connaissances de base de l'utilisation du terminal.

Fonctionnement du script :

1. Mise à jour des paquets système

2. Installation des paquets requis

3. Téléchargement de la dernière version de GrapheneOS

* Le script récupère la dernière version de GrapheneOS pour l'appareil Pixel.

* Il crée les répertoires nécessaires pour stocker les fichiers téléchargés.

4. Vérification des signatures

* Le script télécharge et vérifie les signataires autorisés de GrapheneOS afin de garantir l'intégrité des fichiers d'installation. 5. Téléchargement des fichiers d'installation

* Le script télécharge les fichiers ZIP d'installation et les mises à jour OTA pour GrapheneOS.

6. Préparation de l'appareil

* Suivez les instructions à l'écran pour déverrouiller le bootloader de votre appareil Pixel.

7. Installation de GrapheneOS

* Le script décompresse les fichiers d'installation et lance le processus d'installation.

8. Verrouillage du bootloader

* Après l'installation, le bootloader est de nouveau verrouillé pour des raisons de sécurité.

Utilisation
Pour exécuter le script, PAR EXEMPLE POUR UN PIXEL modèle 10 :

(Adaptez les instructions à votre modèle de PIXEL)

Saisissez la commande suivante dans votre terminal :

-------------------------------------------------------------------------------

```bash
bash /home/$USER/Downloads/PIXEL10.sh
```

Suivez les instructions du script pour terminer l'installation.

------------------------------------------------------------------------------

Remarques importantes

* Sauvegardez vos données : L'installation d'un nouveau système d'exploitation effacera toutes les données de votre appareil. Assurez-vous d'avoir sauvegardé vos informations importantes. * Vérification du démarrage : Après l’installation, utilisez les fonctionnalités d’attestation fournies par GrapheneOS pour vérifier l’intégrité de votre installation.

Conclusion : Ce script simplifie l’installation de GrapheneOS sur votre appareil Pixel. En suivant les étapes décrites ci-dessus, vous vous assurez une installation sans problème. Pour toute question ou problème, veuillez consulter la documentation officielle de GrapheneOS ou demander de l’aide à la communauté.

 #!/bin/bash

sudo apt update 
sudo apt upgrade -y
sudo apt install -y ufw
sudo ufw enable 
sudo apt install -y openssh-client
sudo apt install -y curl
sudo apt install libarchive-tools


DEVICE_NAME="blazer"
VERSION=$(wget -q -O- 'https://grapheneos.org/releases' | grep -oP '(?<=Changelog.{21}).{0,10}' | grep 20)

rm -R "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME"
mkdir -p "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME"
chmod 777 "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME"

curl https://releases.grapheneos.org/allowed_signers -o /home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME/allowed_signersGOS
curl https://raw.githubusercontent.com/GrapheneOS/releases.grapheneos.org/259a27aa98c467ca024a0afff2b939ffa5ef30d1/static/allowed_signers -o /home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME/allowed_signersGTH
cmp -s "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME/allowed_signersGTH" "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME/allowed_signersGOS" && echo "github GrapheneOS and GrapheneOS website, signers, are a match:)." || echo "The signature offered is not GrapheneOS's! STOP NOW!" 
sleep 3s;

wget -P "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME/" "https://releases.grapheneos.org/$DEVICE_NAME-install-$VERSION.zip"
wget -P "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME/" "https://releases.grapheneos.org/$DEVICE_NAME-install-$VERSION.zip.sig"
wget -P "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME/" "https://releases.grapheneos.org/$DEVICE_NAME-ota_update-$VERSION.zip"


ssh-keygen -Y verify -f "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME/allowed_signersGTH" -I contact@grapheneos.org -n "factory images" -s "/home/$USER/Downloads/Pixel9aGRAPHENEOS/$VERSION/$DEVICE_NAME/$DEVICE_NAME-install-$VERSION.zip.sig" < "/home/$USER/Downloads/Pixel9aGRAPHENEOS/$VERSION/$DEVICE_NAME/$DEVICE_NAME-install-$VERSION.zip"

curl -L --create-dirs -o "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/platform-tools_r35.0.2-linux.zip" "https://dl.google.com/android/repository/platform-tools_r35.0.2-linux.zip"
echo "acfdcccb123a8718c46c46c059b2f621140194e5ec1ac9d81715be3d6ab6cd0a  /home/$USER/Downloads/Pixel10ProGRAPHENEOS/platform-tools_r35.0.2-linux.zip" | sha256sum -c

bsdtar xvf "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/platform-tools_r35.0.2-linux.zip" -C "/home/$USER/Downloads/Pixel9aGRAPHENEOS/" 
#DO NOT TOUCH THE ABOVE: CORRECT PATH LINE!
sleep 60s;

export PATH="/home/$USER/Downloads/Pixel10ProGRAPHENEOS/platform-tools:$PATH"

if [ $(fastboot --version | grep -oP '(?<=fastboot version .{0}).{0,2}') -ge 35 ]; then 
echo "Adequate fastboot version installed in: /home/$USER/Downloads/Pixel10ProGRAPHENEOS/platform-tools/fastboot"
else
echo "Too old fastboot version. STOP NOW! type: buttons CTRL + C"
fi
sleep 6s;

sudo apt install -y android-sdk-platform-tools-common
sudo apt autoremove -y 
sudo systemctl stop fwupd.service

echo "Turn your pixel9a phone OFF now"
sleep 10s;
echo "then press the POWER (On) WHILE HOLDING VOLUME *DOWN* button... "
echo "...during the boot process."
sleep 20s;
echo "You should now see a RED TRIANGLE. "
echo "Do NOT press power button"
echo "Do NOT activate the -Start- menu item"
sleep 10s;
echo "with a 'USB A - usb-c' cable, CONNECT the device to this computer... "
echo " ...and wait now 1 minute"
sleep 60s;
fastboot flashing unlock
sleep 30s;

# ready the Phone
echo "press VOLUME DOWN and set your phone to: 'unlock'"
sleep 10s;
# unpack image zip
bsdtar xvf "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME/$DEVICE_NAME-install-$VERSION.zip" -C "/home/$USER/Downloads/Pixel9aGRAPHENEOS/$VERSION/$DEVICE_NAME/" 
sleep 3s;

cd "/home/$USER/Downloads/Pixel10ProGRAPHENEOS/$VERSION/$DEVICE_NAME/$DEVICE_NAME-install-$VERSION/" && bash flash-all.sh

echo "now wait 1 min till completion"
sleep 60s;
fastboot flashing lock

echo "press VOLUME DOWN and set your phone to: 'lock'"
echo "(don't worry if your screen makes this impossible, then just omit this above.)"
sleep 10s;
echo "unplug the cable."
sleep 10s;
echo "LOOONG press the power button OFF/ON... and let default Start do its boot job."
echo "You shall now be on GrapheneOS."
echo ""
cat << EOF
"Verify boot from the ATTESTATION FEATURES provided by the supported device to validate the hardware, firmware and GrapheneOS installation are genuine (Even if the computer you used to flash GrapheneOS was compromised and an attacker replaced GrapheneOS with their own malicious OS, they can be detected with this feature).

VERIFIED BOOT verifies the entirety of the firmware and OS images on every boot. 
The public key for the firmware images is google's burnt into fuses in the SoC at the factory."
EOF

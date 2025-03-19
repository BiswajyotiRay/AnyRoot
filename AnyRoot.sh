# Ensure required commands are installed
command -v wget >/dev/null 2>&1 || { echo "wget not found, please install it first"; exit 1; }
command -v unzip >/dev/null 2>&1 || { echo "unzip not found, please install it first"; exit 1; }
command -v tar >/dev/null 2>&1 || { echo "tar not found, please install it first"; exit 1; }

# Download and extract files
wget -O AnyRoot.zip https://github.com/BiswajyotiRay/AnyRoot/releases/download/root/AnyRoot.zip || { echo "Download failed"; exit 1; }
unzip AnyRoot.zip || { echo "Failed to unzip AnyRoot.zip"; exit 1; }
unzip root.zip || { echo "Failed to unzip root.zip"; exit 1; }
tar -xvf root.tar.xz || { echo "Failed to extract root.tar.xz"; exit 1; }

clear

# Start Proot
./dist/proot -S . /bin/bash || { echo "Proot failed to start"; exit 1; }
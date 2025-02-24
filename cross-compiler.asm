# Create a directory for the toolchain
mkdir -p /c/cross-compiler

# Extract downloaded archives
tar -xvf i386-elf-gcc.tar.gz -C /c/cross-compiler
tar -xvf i386-elf-binutils.tar.gz -C /c/cross-compiler

# Move binaries into the same folder (if required)
mv /c/cross-compiler/i386-elf-gcc/bin/* /c/cross-compiler/bin/
mv /c/cross-compiler/i386-elf-binutils/bin/* /c/cross-compiler/bin/

# Add to PATH (temporary for the session)
export PATH=$PATH:/c/cross-compiler/bin

# Test the tools
i386-elf-gcc --version
i386-elf-ld --version

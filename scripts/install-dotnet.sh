#!/usr/bin/env bash

# .NET 3.1.418
#DOTNET_BINARIES="https://download.visualstudio.microsoft.com/download/pr/9be72f63-270d-4b1f-9725-4dab8973c69d/62681fb4630de36e15011fa543c90908/dotnet-sdk-3.1.418-linux-x64.tar.gz"

# .NET 2.2
DOTNET_BINARIES="https://download.visualstudio.microsoft.com/download/pr/022d9abf-35f0-4fd5-8d1c-86056df76e89/477f1ebb70f314054129a9f51e9ec8ec/dotnet-sdk-2.2.207-linux-x64.tar.gz"

curl -L $DOTNET_BINARIES | \
    sudo tar -xpz -C /usr/share/dotnet
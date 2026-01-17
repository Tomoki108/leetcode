#!/bin/bash
set -e

echo "🚀 Setting up Kotlin environment..."

# Install SDKMAN if not already installed
if [ ! -d "$HOME/.sdkman" ]; then
    echo "📦 Installing SDKMAN..."
    curl -s "https://get.sdkman.io" | bash
fi

# Source SDKMAN
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install Kotlin if not already installed
if ! sdk list kotlin 2>&1 | grep -q "2.1.10"; then
    echo "📦 Installing Kotlin 2.1.10..."
    sdk install kotlin 2.1.10 || true
else
    echo "✅ Kotlin 2.1.10 already installed"
fi

# Create solutions directory if it doesn't exist
mkdir -p /workspaces/leetcode/solutions

echo "✅ Setup complete!"

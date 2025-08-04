#!/bin/bash

# Data Insights Consulting Website Setup Script

echo "🚀 Setting up Data Insights Consulting Website..."
echo ""

# Check if Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo "❌ Hugo is not installed. Please install Hugo Extended version first."
    echo "Visit: https://gohugo.io/installation/"
    exit 1
fi

# Check Hugo version
HUGO_VERSION=$(hugo version | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' | head -1)
echo "✓ Hugo version $HUGO_VERSION detected"

# Check if themes directory exists
if [ ! -d "themes" ]; then
    mkdir themes
    echo "✓ Created themes directory"
fi

# Install Apéro theme
if [ ! -d "themes/hugo-apero" ]; then
    echo "📦 Installing Hugo Apéro theme..."
    git submodule add https://github.com/hugo-apero/hugo-apero.git themes/hugo-apero
    git submodule update --init --recursive
    echo "✓ Theme installed successfully"
else
    echo "✓ Hugo Apéro theme already installed"
fi

# Install Node dependencies if package.json exists
if [ -f "package.json" ]; then
    if command -v npm &> /dev/null; then
        echo "📦 Installing Node.js dependencies..."
        npm install
        echo "✓ Node dependencies installed"
    else
        echo "⚠️  npm not found. Skipping Node.js dependencies."
    fi
fi

# Create .env file from example if it doesn't exist
if [ ! -f ".env" ] && [ -f ".env.example" ]; then
    cp .env.example .env
    echo "✓ Created .env file from example"
    echo "⚠️  Please update .env with your actual values"
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "🎯 Next steps:"
echo "1. Update config.toml with your site details"
echo "2. Run 'hugo server -D' to start development server"
echo "3. Visit http://localhost:1313 to see your site"
echo ""
echo "📚 For more information, see README.md"
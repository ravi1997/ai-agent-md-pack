#!/bin/bash
# Quick setup script for Antigravity integration

echo "🤖 Setting up Antigravity integration..."
echo ""

# Check if .agent/ directory exists
if [ ! -d "ai" ]; then
    echo "❌ Error: .agent/ directory not found"
    echo "   Please run this script from your project root with .agent/ folder"
    exit 1
fi

echo "Found .agent/ directory ✓"
echo ""

# Ask user preference
echo "Choose integration method:"
echo "1) Rename .agent/ to .agent/ (Recommended - Antigravity standard)"
echo "2) Keep .agent/ and create .agent/ symlink"
echo "3) Keep .agent/ and create .agent/ pointer files"
echo ""
read -p "Enter choice (1-3): " choice

case $choice in
    1)
        echo ""
        echo "Renaming .agent/ to .agent/..."
        mv ai .agent
        echo "✓ Done! Antigravity will auto-detect .agent/ directory"
        ;;
    2)
        echo ""
        echo "Creating .agent/ symlink to .agent/..."
        ln -s ai .agent
        echo "✓ Done! Antigravity will follow symlink to .agent/"
        ;;
    3)
        echo ""
        echo "Creating .agent/ pointer directory..."
        mkdir -p .agent
        
        # Create pointer README
        cat > .agent/README.md << 'EOF'
# Agent Configuration

This project uses AI Agent MD Pack located in `.agent/` directory.

**Start here:** [.agent/00_INDEX.md](../.agent/00_INDEX.md)

All agent instructions, workflows, and policies are in the `.agent/` folder.
EOF
        
        # Create symlinks to key files
        ln -s ../.agent/00_SYSTEM.md .agent/00_SYSTEM.md
        ln -s ../.agent/00_INDEX.md .agent/00_INDEX.md
        ln -s ../.agent/01_PROJECT_CONTEXT.md .agent/01_PROJECT_CONTEXT.md
        
        echo "✓ Done! Created .agent/ with pointers to .agent/"
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

echo ""
echo "🎉 Integration complete!"
echo ""
echo "Verification:"

# Verify setup
if [ -f ".agent/00_INDEX.md" ]; then
    echo "✓ .agent/00_INDEX.md found"
else
    echo "✗ .agent/00_INDEX.md not found"
fi

if [ -f ".agent/00_SYSTEM.md" ]; then
    echo "✓ .agent/00_SYSTEM.md found"
else
    echo "✗ .agent/00_SYSTEM.md not found"
fi

if [ -f ".agent/01_PROJECT_CONTEXT.md" ]; then
    echo "✓ .agent/01_PROJECT_CONTEXT.md found"
else
    echo "✗ .agent/01_PROJECT_CONTEXT.md not found"
fi

echo ""
echo "Next steps:"
echo "1. Fill .agent/01_PROJECT_CONTEXT.md (2 required fields)"
echo "2. Test with Antigravity: 'What agent configuration do you see?'"
echo "3. Start using: 'Read .agent/00_INDEX.md and [your task]'"
echo ""
echo "For more info: See ANTIGRAVITY_INTEGRATION.md"

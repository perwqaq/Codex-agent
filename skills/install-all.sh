#!/bin/bash
# 安装所有Agent需要的Skills

echo "🎮 正在安装棋牌游戏平台所需的Skills..."

# Commander Skills
echo "📦 安装 Commander Skills..."
npx skillsadd anthropic/review-prompts 2>/dev/null || echo "  ⚠️ review-prompts 安装失败或已存在"
npx skillsadd anthropic/screenshot-automation 2>/dev/null || echo "  ⚠️ screenshot-automation 安装失败或已存在"
npx skillsadd anthropic/mcp-installer 2>/dev/null || echo "  ⚠️ mcp-installer 安装失败或已存在"
npx skillsadd anthropic/quality-gate 2>/dev/null || echo "  ⚠️ quality-gate 安装失败或已存在"
npx skillsadd anthropic/delivery-check 2>/dev/null || echo "  ⚠️ delivery-check 安装失败或已存在"

# Product Manager Skills
echo "📦 安装 Product Manager Skills..."
npx skillsadd anthropic/PRD-generator 2>/dev/null || echo "  ⚠️ PRD-generator 安装失败或已存在"
npx skillsadd anthropic/requirement-analysis 2>/dev/null || echo "  ⚠️ requirement-analysis 安装失败或已存在"
npx skillsadd anthropic/competitor-research 2>/dev/null || echo "  ⚠️ competitor-research 安装失败或已存在"
npx skillsadd anthropic/user-story-writer 2>/dev/null || echo "  ⚠️ user-story-writer 安装失败或已存在"

# UI/UX Designer Skills
echo "📦 安装 UI/UX Designer Skills..."
npx skillsadd anthropic/figma-integration 2>/dev/null || echo "  ⚠️ figma-integration 安装失败或已存在"
npx skillsadd anthropic/design-system 2>/dev/null || echo "  ⚠️ design-system 安装失败或已存在"
npx skillsadd anthropic/responsive-check 2>/dev/null || echo "  ⚠️ responsive-check 安装失败或已存在"
npx skillsadd anthropic/accessibility-audit 2>/dev/null || echo "  ⚠️ accessibility-audit 安装失败或已存在"

# Frontend Engineer Skills
echo "📦 安装 Frontend Engineer Skills..."
npx skillsadd anthropic/react-vite 2>/dev/null || echo "  ⚠️ react-vite 安装失败或已存在"
npx skillsadd anthropic/websocket-client 2>/dev/null || echo "  ⚠️ websocket-client 安装失败或已存在"
npx skillsadd anthropic/ui-component-lib 2>/dev/null || echo "  ⚠️ ui-component-lib 安装失败或已存在"
npx skillsadd anthropic/performance-opt 2>/dev/null || echo "  ⚠️ performance-opt 安装失败或已存在"

# Backend Engineer Skills
echo "📦 安装 Backend Engineer Skills..."
npx skillsadd anthropic/node-api 2>/dev/null || echo "  ⚠️ node-api 安装失败或已存在"
npx skillsadd anthropic/database-design 2>/dev/null || echo "  ⚠️ database-design 安装失败或已存在"
npx skillsadd anthropic/auth-system 2>/dev/null || echo "  ⚠️ auth-system 安装失败或已存在"
npx skillsadd anthropic/rest-api-design 2>/dev/null || echo "  ⚠️ rest-api-design 安装失败或已存在"

# Game Logic Engineer Skills
echo "📦 安装 Game Logic Engineer Skills..."
npx skillsadd anthropic/game-algorithm 2>/dev/null || echo "  ⚠️ game-algorithm 安装失败或已存在"
npx skillsadd anthropic/room-management 2>/dev/null || echo "  ⚠️ room-management 安装失败或已存在"
npx skillsadd anthropic/scoring-engine 2>/dev/null || echo "  ⚠️ scoring-engine 安装失败或已存在"
npx skillsadd anthropic/anti-cheat 2>/dev/null || echo "  ⚠️ anti-cheat 安装失败或已存在"

# QA Engineer Skills
echo "📦 安装 QA Engineer Skills..."
npx skillsadd anthropic/test-automation 2>/dev/null || echo "  ⚠️ test-automation 安装失败或已存在"
npx skillsadd anthropic/performance-test 2>/dev/null || echo "  ⚠️ performance-test 安装失败或已存在"
npx skillsadd anthropic/security-test 2>/dev/null || echo "  ⚠️ security-test 安装失败或已存在"
npx skillsadd anthropic/regression-test 2>/dev/null || echo "  ⚠️ regression-test 安装失败或已存在"

# DevOps/Security Skills
echo "📦 安装 DevOps/Security Skills..."
npx skillsadd anthropic/dockerfile-gen 2>/dev/null || echo "  ⚠️ dockerfile-gen 安装失败或已存在"
npx skillsadd anthropic/ci-cd-pipeline 2>/dev/null || echo "  ⚠️ ci-cd-pipeline 安装失败或已存在"
npx skillsadd anthropic/security-audit 2>/dev/null || echo "  ⚠️ security-audit 安装失败或已存在"
npx skillsadd anthropic/monitoring-setup 2>/dev/null || echo "  ⚠️ monitoring-setup 安装失败或已存在"

echo "✅ Skills 安装完成!"
echo ""
echo "已安装的Skills列表:"
ls -la ~/.codex/skills/ 2>/dev/null || echo "Skills目录不存在，请检查Codex安装"

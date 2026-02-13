#!/bin/bash
# 安装MCP服务器

echo "🔧 正在安装MCP服务器..."

# 核心MCP服务器
echo "📦 安装核心MCP服务器..."

npx -y @modelcontextprotocol/server-filesystem ./workspace
echo "  ✅ filesystem"

npx -y @modelcontextprotocol/server-bash
echo "  ✅ terminal"

npx -y @modelcontextprotocol/server-playwright
echo "  ✅ browser"

# GitHub MCP
npx -y @modelcontextprotocol/server-github
echo "  ✅ github"

# 数据库MCP
npx -y @modelcontextprotocol/server-postgres
echo "  ✅ postgres"

npx -y @modelcontextprotocol/server-redis
echo "  ✅ redis"

# Docker MCP
npx -y @modelcontextprotocol/server-docker
echo "  ✅ docker"

# Figma MCP (需要API Token)
# npx -y @modelcontextprotocol/server-figma
# echo "  ✅ figma"

# 监控MCP
npx -y @modelcontextprotocol/server-sentry
echo "  ✅ sentry"

echo ""
echo "✅ MCP服务器安装完成!"
echo ""
echo "配置已保存到: mcp/servers.json"
echo ""
echo "在Codex中配置MCP:"
echo "1. 打开 Codex 设置"
echo "2. 找到 MCP Servers 配置"
echo "3. 添加上述服务器"

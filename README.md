# 🎮 Codex 8-Agent 协同工作流系统 - 棋牌游戏平台开发

## 仓库地址
**GitHub**: https://github.com/perwqaq/Codex-agent

---

## 📥 快速安装指南

### 1. 克隆仓库
```bash
git clone https://github.com/perwqaq/Codex-agent.git
cd Codex-agent
```

### 2. 安装所有 Skills

**方式一: 手动安装**
```bash
# 安装 Commander Skills
npx skillsadd anthropic/review-prompts
npx skillsadd anthropic/screenshot-automation
npx skillsadd anthropic/mcp-installer
npx skillsadd anthropic/quality-gate
npx skillsadd anthropic/delivery-check

# 安装 Product Manager Skills
npx skillsadd anthropic/PRD-generator
npx skillsadd anthropic/requirement-analysis
npx skillsadd anthropic/competitor-research

# 安装 UI/UX Designer Skills
npx skillsadd anthropic/figma-integration
npx skillsadd anthropic/design-system
npx skillsadd anthropic/responsive-check

# 安装 Frontend Engineer Skills
npx skillsadd anthropic/react-vite
npx skillsadd anthropic/websocket-client

# 安装 Backend Engineer Skills
npx skillsadd anthropic/node-api
npx skillsadd anthropic/database-design
npx skillsadd anthropic/auth-system

# 安装 Game Logic Skills
npx skillsadd anthropic/game-algorithm
npx skillsadd anthropic/room-management

# 安装 QA Engineer Skills
npx skillsadd anthropic/test-automation
npx skillsadd anthropic/performance-test

# 安装 DevOps Skills
npx skillsadd anthropic/dockerfile-gen
npx skillsadd anthropic/ci-cd-pipeline
npx skillsadd anthropic/security-audit
```

### 3. 配置 MCP 服务器
```bash
# 需要先安装 Node.js
npm install -g @modelcontextprotocol/server-filesystem
npm install -g @modelcontextprotocol/server-playwright
npm install -g @modelcontextprotocol/server-github
```

---

## 🏢 系统架构

```
                            ┌─────────────────────┐
                            │   COMMANDER (大脑)   │
                            │   总指挥 + 调度      │
                            └──────────┬──────────┘
                                       │
     ┌─────────────┬───────────┬───────┴───────┬──────────┬────────────┐
     │             │           │               │          │            │
     ▼             ▼           ▼               ▼          ▼            ▼
┌─────────┐  ┌─────────┐  ┌──────────┐  ┌─────────┐  ┌────────┐  ┌─────────┐
│Product  │  │  UI/UX  │  │ Frontend │  │Backend  │  │  Game  │  │   QA    │
│ Manager │  │Designer│  │ Engineer │  │ Engineer│  │ Logic  │  │ Engineer│
└─────────┘  └─────────┘  └──────────┘  └─────────┘  └────────┘  └─────────┘
     │             │           │               │          │            │
     └─────────────┴───────────┴───────┬───────┴──────────┴────────────┘
                                       │
                            ┌──────────▼──────────┐
                            │   DevOps + Security │
                            │   部署 + 安全 + 运维  │
                            └─────────────────────┘
```

---

## 🤖 8个 Agent 职责

| # | Agent | 角色 | 核心职责 |
|---|-------|------|----------|
| 1 | **Commander** | CTO/技术总监 | 项目总调度、代码审查、MCP/Skills安装、质量验收、交付决策 |
| 2 | **Product Manager** | 产品经理 | 需求分析、PRD编写、竞品分析、功能优先级排序 |
| 3 | **UI/UX Designer** | 设计总监 | 设计调研、Design System、界面设计 |
| 4 | **Frontend Engineer** | 前端负责人 | React开发、WebSocket集成、性能优化 |
| 5 | **Backend Engineer** | 后端负责人 | API开发、数据库设计、用户系统 |
| 6 | **Game Logic Engineer** | 游戏工程师 | 游戏算法、房间管理、计分系统 |
| 7 | **QA Engineer** | 测试负责人 | 自动化测试、性能测试、安全测试 |
| 8 | **DevOps/Security** | 运维安全 | CI/CD、容器化部署、安全审计 |

---

## ✅ 验收流程

```
┌─────────────────────────────────────────────────────────────────┐
│                    交付验证流程 (商业级)                         │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│   步骤1: 代码审查                                               │
│   ├── 静态分析: SonarQube / ESLint                              │
│   ├── 安全扫描: OWASP / Snyk                                    │
│   └── 代码规范: PEP8 / Airbnb Style                            │
│                                                                  │
│   步骤2: 功能测试                                               │
│   ├── 单元测试覆盖率 > 80%                                       │
│   ├── 集成测试: 所有API通过                                      │
│   └── E2E测试: 核心流程100%覆盖                                  │
│                                                                  │
│   步骤3: 性能压测                                                │
│   ├── 响应时间: P95 < 200ms                                     │
│   └── 并发数: 支持1000+同时在线                                  │
│                                                                  │
│   步骤4: 体验评分 (关键!)                                        │
│   ├── 启动项目3次，不读取代码                                    │
│   ├── 每次评估: 功能完整度、UI美观、性能、交互                   │
│   └── 满分10分                                                   │
│                                                                  │
│   ✅ 交付条件: 连续3次 ≥ 9.5分                                   │
│   ❌ 不达标: 返回对应Agent重做                                   │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

## 📁 目录结构

```
agent/
├── README.md                    # 系统说明
├── PUSH.md                      # 安装指南 (本文件)
├── .gitignore
├── config/
│   ├── global.yaml              # 全局配置
│   └── validation-rules.yaml    # 验证规则
├── agents/                     # 8个Agent定义
│   ├── commander/              # 总指挥
│   ├── product-manager/       # 产品经理
│   ├── ui-ux-designer/        # 设计师
│   ├── frontend-engineer/     # 前端工程师
│   ├── backend-engineer/      # 后端工程师
│   ├── game-logic/            # 游戏逻辑工程师
│   ├── qa-engineer/           # 测试工程师
│   └── devops-security/       # 运维安全
├── skills/
│   └── install-all.sh         # 安装脚本
├── mcp/
│   ├── servers.json           # MCP配置
│   └── install-servers.sh    # 安装脚本
├── workflow/
│   ├── main-flow.yaml         # 主工作流
│   └── validation-flow.yaml  # 验证流程
└── validation/
    └── scoring-criteria.md   # 评分标准
```

---

## 🎯 使用方法

### 方式一: 使用 Codex CLI

```bash
# 运行主工作流
codex workflow run --config workflow/main-flow.yaml

# 单独运行验证
codex workflow run --config workflow/validation-flow.yaml
```

### 方式二: 手动执行

```bash
# 1. 产品经理分析需求
# → 编辑 agents/product-manager/ 下的需求文档

# 2. UI/UX 设计师进行设计
# → 先完成设计调研和 Design System
# → 再进行界面设计

# 3. 开发阶段 (并行)
# → 前端: agents/frontend-engineer/
# → 后端: agents/backend-engineer/
# → 游戏: agents/game-logic/

# 4. 测试阶段
# → agents/qa-engineer/

# 5. 部署阶段
# → agents/devops-security/

# 6. 质量验收
# → Commander 执行验收流程
```

---

## 🔧 技术栈

| 层级 | 技术 |
|------|------|
| **前端** | React + TypeScript + Vite + TailwindCSS |
| **后端** | Node.js + FastAPI + PostgreSQL + Redis |
| **游戏** | WebSocket + Socket.io |
| **部署** | Docker + Kubernetes + GitHub Actions |
| **监控** | Prometheus + Grafana |

---

## 📝 注意事项

1. **Design System 优先**: UI/UX 设计师必须先输出 Design Tokens 和组件规范代码，才能开始页面设计
2. **设计调研**: 设计师需要先在站酷、Kenney Assets 等网站进行素材调研
3. **严格验收**: 体验评分需要连续3次 ≥ 9.5分才能交付

---

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📄 许可证

MIT License

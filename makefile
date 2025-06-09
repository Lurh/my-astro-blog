.PHONY: dev build

# 变量定义
GIT = git

# 获取当前日期（格式：YYYY-MM-DD）
CURRENT_DATE := $(shell date +'%Y-%m-%d')

COMMIT_MSG = "文档更新: $(CURRENT_DATE)"

# 默认执行 dev
all: dev

install:
	pnpm i

dev:
	npm run dev

build:
	npm run build

# git 提交
commit:
	@echo "Committing changes with message: $(COMMIT_MSG)"
	$(GIT) add .
	$(GIT) commit -m '$(COMMIT_MSG)'
	$(GIT) push

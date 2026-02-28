# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

GNU Stow 기반 dotfiles 저장소. 각 최상위 디렉토리가 하나의 stow 패키지이며, 내부 구조가 `~` 기준 실제 경로와 동일해야 한다.

예: `ghostty/.config/ghostty/config` → `~/.config/ghostty/config`

## Commands

```bash
# 특정 패키지 적용 (심볼릭 링크 생성)
cd ~/dotfiles && stow <package>

# 모든 패키지 한번에 적용
cd ~/dotfiles && stow */

# 패키지 제거
stow -D <package>

# 패키지 재적용 (변경 후 링크 갱신)
stow -R <package>
```

## Architecture

**패키지 구성** — 현재 4개의 stow 패키지:
- `ghostty/` — Ghostty 터미널 설정 (`~/.config/ghostty/config`)
- `lazygit/` — Lazygit 설정 + Catppuccin 테마 파일 (`~/.config/lazygit/`)
- `zsh/` — Zsh 셸 설정 (`~/.zshrc`)
- `git/` — Git 사용자 설정 (`~/.gitconfig`)

**테마 통일** — Catppuccin Latte를 Ghostty, Lazygit에 공통 적용. Lazygit은 별도 테마 파일(`themes/catppuccin-latte-blue.yml`)을 `LG_CONFIG_FILE` 환경변수로 로드.

**새 패키지 추가 시**: 최상위에 디렉토리를 만들고 홈 기준 경로 구조를 그대로 재현한 뒤 `stow <name>` 실행.

## Conventions

- 설정 파일에 한글 주석 사용
- README.md는 한국어로 작성
- Git 커밋 메시지는 한글로 작성
- 폰트: JetBrainsMono Nerd Font (영문) + D2Coding (한글)
- macOS + Homebrew 환경 기준

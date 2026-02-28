# dotfiles

[GNU Stow](https://www.gnu.org/software/stow/)를 사용하여 dotfile들을 관리합니다.

## 구조

```
dotfiles/
├── ghostty/           # Ghostty 터미널 설정
│   └── .config/ghostty/config
├── zsh/               # Zsh 셸 설정
│   └── .zshrc
├── git/               # Git 설정
│   └── .gitconfig
└── README.md
```

각 디렉토리는 하나의 **stow 패키지**입니다.
디렉토리 내부 구조가 홈(`~`)을 기준으로 한 실제 경로와 동일해야 합니다.

예를 들어 `ghostty/.config/ghostty/config`는 stow 실행 시 `~/.config/ghostty/config`에 심볼릭 링크가 생성됩니다.

## 사전 준비

```bash
# macOS
brew install stow

# Ubuntu/Debian
sudo apt install stow
```

## 새 기기에서 설치

```bash
git clone git@github.com:khaki4/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow ghostty zsh git
```

모든 패키지를 한 번에 설치하려면:

```bash
cd ~/dotfiles
stow */
```

> **주의**: 기존에 같은 경로에 파일이 있으면 충돌이 발생합니다.
> 기존 파일을 백업하거나 삭제한 후 stow를 실행하세요.

## 사용법

### 패키지 추가 (새 dotfile 관리하기)

예시: `~/.config/nvim/init.lua`를 추가하려면

```bash
# 1. dotfiles 안에 동일한 경로 구조로 디렉토리 생성
mkdir -p ~/dotfiles/nvim/.config/nvim

# 2. 파일을 이동
mv ~/.config/nvim/init.lua ~/dotfiles/nvim/.config/nvim/init.lua

# 3. stow로 심볼릭 링크 생성
cd ~/dotfiles
stow nvim
```

### 패키지 제거 (심볼릭 링크 삭제)

```bash
cd ~/dotfiles
stow -D ghostty    # ghostty 링크만 제거
```

### 패키지 재적용 (변경 후 링크 갱신)

```bash
cd ~/dotfiles
stow -R ghostty
```

## 현재 관리 중인 설정

| 패키지 | 설명 | 대상 경로 |
|--------|------|-----------|
| `ghostty` | Ghostty 터미널 (테마, 키바인딩, 폰트) | `~/.config/ghostty/config` |
| `zsh` | Zsh 셸 (alias, 환경변수, 프롬프트) | `~/.zshrc` |
| `git` | Git 사용자 정보 | `~/.gitconfig` |

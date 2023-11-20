# skowronski.pro - web

## hugo

### take care of theme updates

```bash
git submodule update --remote --merge
```

### server for development

```bash
hugo server --disableFastRender --forceSyncStatic
bash cv.sh # as needed
```

### deployment

```bash
bash deploy.sh
```

## PDF

### Prepare env

macOS:
```bash
brew install chromium exiftool
```

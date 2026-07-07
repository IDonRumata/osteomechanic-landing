# Лендинг «Остеомеханика · Марина Дементьева»

Статический одностраничный лендинг (один файл `index.html`, без сборки).

## Структура
- `index.html` — лендинг (весь CSS/JS внутри).
- `photo_2024-11-08_16-01-36.jpg` — фото hero (в полный рост).
- `photo_2025-02-11_19-26-14.jpg` — фото мастера (портрет).
- `vercel.json` — конфиг деплоя (кэш картинок, security-заголовки).
- `.gitignore` — прячет внутренние документы (маркетинг-план, ТЗ) от публикации.

## Как поменять данные
Всё в блоке `CONFIG` в конце `index.html`:
```js
const CONFIG = {
  city:        "Витебск",
  priceFrom:   100,          // цена «от»
  currency:    "руб",
  phone:       "+375000000000",
  phonePretty: "+375 (00) 000-00-00",
  telegram:    "username",   // без @
  whatsapp:    "375000000000" // без + и пробелов
};
```
Меняешь значения → сохраняешь → `git commit` → `git push`. Vercel задеплоит сам.

## Деплой на Vercel (первый раз)

1. Создать репозиторий на GitHub (пустой, без README):
   ```bash
   git remote add origin https://github.com/USERNAME/osteomechanic-landing.git
   git branch -M main
   git push -u origin main
   ```
2. Зайти на https://vercel.com → **Add New → Project** → **Import** этот репозиторий.
3. Framework Preset: **Other** (статика). Root Directory: `.`. Build Command: пусто. Output: пусто.
4. **Deploy**. Через ~30 сек получишь адрес вида `osteomechanic-landing.vercel.app`.
5. Домен (опционально): Settings → Domains → добавить свой.

Дальше любой `git push` в `main` автоматически обновляет сайт.

## Локальный просмотр
Просто открыть `index.html` в браузере, либо:
```bash
npx serve .
```

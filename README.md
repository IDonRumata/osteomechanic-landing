<div align="center">

# 🤲 Остеомеханика · Марина Дементьева

**Продающий лендинг услуг бережной работы с телом**
Оздоровление · снятие напряжения · возвращение лёгкости движения — г. Витебск

[![Live Demo](https://img.shields.io/badge/Live-Demo-000000?style=for-the-badge&logo=vercel&logoColor=white)](https://osteomechanic-landing.vercel.app)
[![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](#)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](#)
[![JavaScript](https://img.shields.io/badge/Vanilla_JS-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)](#)
[![Vercel](https://img.shields.io/badge/Deployed_on-Vercel-000000?style=for-the-badge&logo=vercel&logoColor=white)](https://vercel.com)

![Zero dependencies](https://img.shields.io/badge/dependencies-0-success?style=flat-square)
![Single file](https://img.shields.io/badge/build-single--file-blue?style=flat-square)
![Mobile first](https://img.shields.io/badge/design-mobile--first-ff69b4?style=flat-square)
![No trackers](https://img.shields.io/badge/privacy-no--trackers-informational?style=flat-square)

</div>

---

## 📖 О проекте

Одностраничный конверсионный лендинг для частного мастера остеомеханики. Задача — превращать переходы из соцсетей и локальной рекламы в заявки на сеанс. Сделан как **единый самодостаточный `index.html`** без сборки, зависимостей и бэкенда: открывается в любом браузере, деплоится за 30 секунд, редактируется в одном месте.

> **Позиционирование — оздоровительно-расслабляющее.** В текстах намеренно нет медицинских обещаний («лечу», «диагноз», «вылечиваю»): услуга не является медицинской деятельностью. В подвале страницы — соответствующий дисклеймер.

## ✨ Ключевые особенности

- 🎯 **Продающая структура** — hero, боли аудитории, польза, этапы сеанса, отзывы, оффер, FAQ, форма заявки.
- ⚙️ **Один блок конфигурации** — город, цена, телефон и мессенджеры меняются в объекте `CONFIG`, без правки разметки.
- 📱 **Mobile-first и адаптивность** — корректно на телефоне, планшете и десктопе.
- 💬 **Заявки без сервера** — форма и плавающие кнопки открывают WhatsApp/Telegram с заполненным текстом.
- 🖼️ **Отказоустойчивые изображения** — если фото не найдено, показывается аккуратный плейсхолдер вместо «битой» картинки.
- 🎨 **Тёплая авторская палитра** — «кожано-осенние» тона, шрифты Playfair Display + Manrope, плавные анимации появления.
- 🚀 **Ноль зависимостей** — чистый HTML/CSS/JS, быстрая загрузка, никаких трекеров по умолчанию.

## 🗂️ Структура репозитория

```
.
├── index.html                      # Лендинг: разметка + стили + скрипты в одном файле
├── photo_2024-11-08_16-01-36.jpg   # Фото hero (в полный рост)
├── photo_2025-02-11_19-26-14.jpg   # Фото мастера (портрет, блок «О мастере»)
├── vercel.json                     # Конфиг деплоя: кэш изображений, security-заголовки
├── git-setup.ps1                   # Разовый скрипт инициализации Git + push (Windows)
├── .gitignore                      # Исключает приватные документы из публикации
└── README.md
```

## ⚙️ Конфигурация

Все изменяемые данные — в объекте `CONFIG` в конце `index.html`:

```js
const CONFIG = {
  city:        "Витебск",          // город (подставляется по всей странице)
  priceFrom:   100,                // цена «от», число
  currency:    "руб",
  masterName:  "Марина Дементьева",
  phone:       "+375000000000",    // телефон в международном формате
  phonePretty: "+375 (00) 000-00-00",
  telegram:    "username",         // ник в Telegram без @
  whatsapp:    "375000000000",     // номер для WhatsApp без + и пробелов
  greeting:    "Здравствуйте! Хочу записаться на сеанс остеомеханики."
};
```

Изменил → сохранил → `git push`. Vercel обновит сайт автоматически.

> ⚠️ **Перед публикацией** замените заглушки контактов (`+375000000000`, `username`) на реальные — иначе форма и кнопки ведут в никуда.

## 🚀 Быстрый старт

**Локальный просмотр:**
```bash
# просто откройте index.html в браузере, либо запустите статический сервер:
npx serve .
```

**Первичная публикация на GitHub** (Windows, из папки проекта):
```powershell
powershell -ExecutionPolicy Bypass -File .\git-setup.ps1
```

## ☁️ Деплой на Vercel

1. [vercel.com](https://vercel.com) → **Add New → Project → Import** этот репозиторий.
2. **Framework Preset:** `Other`. Поля **Build Command** и **Output Directory** — пустые.
3. **Deploy.** Через ~30 секунд проект доступен по адресу `*.vercel.app`.

Каждый последующий `git push` в ветку `main` триггерит автоматический редеплой.

## 🛠️ Технологии

| Слой | Решение |
|------|---------|
| Разметка | HTML5, семантические секции, Open Graph |
| Стили | CSS3 (custom properties, grid/flex, `@media`, keyframe-анимации) |
| Логика | Vanilla JavaScript (IntersectionObserver, конфиг-инъекция) |
| Шрифты | Google Fonts — Playfair Display, Manrope |
| Хостинг | Vercel (статика + security-заголовки через `vercel.json`) |

## 🗺️ Роадмап

- [x] MVP лендинга (структура, адаптив, конфиг, деплой)
- [ ] Реальные отзывы вместо заглушек
- [ ] Подключение аналитики (Yandex.Metrica / GA4)
- [ ] Мультигород через параметр конфигурации
- [ ] Интеграция с Telegram-ботом записи (первичный опрос, CRM, RAG-консультации) — *в проработке*

## 🔒 Приватность и право

Сайт не содержит трекеров и не собирает данные без действия пользователя. Услуги носят оздоровительно-расслабляющий характер и не являются медицинской деятельностью. Обработка персональных данных из формы — только для связи с клиентом, в соответствии с законодательством Республики Беларусь.

## 👤 Автор

**Марина Дементьева** — мастер остеомеханики, г. Витебск
Разработка и сопровождение: [@IDonRumata](https://github.com/IDonRumata)

<div align="center">
<sub>Сделано с заботой о теле и о конверсии 🤍</sub>
</div>

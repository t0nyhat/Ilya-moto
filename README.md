<div align="center">

# 🏍️ ilayTeam — Мотошкола Ильи Гриднева

[![Website](https://img.shields.io/badge/site-ilayteamdv.ru-22d3ee?style=for-the-badge)](https://ilayteamdv.ru)
[![Telegram](https://img.shields.io/badge/Telegram-канал-26A5E4?logo=telegram&logoColor=fff&style=for-the-badge)](https://t.me/ILAY_MOTO)
[![VK](https://img.shields.io/badge/VK-страница-0077FF?logo=vk&logoColor=fff&style=for-the-badge)](https://vk.com/wall45244240_2204)

</div>

> Статический лендинг с курсами мотошколы: базовый курс, трюковый PRO (стантрайдинг) и мотосопровождение. Основной город — Хабаровск, выездные интенсивы — Владивосток.

## 🚀 Возможности
- Курс «Базовый»: 10×60 мин — посадка, баланс, манёвры, безопасные рефлексы
- Курс «Трюковый PRO»: вилли, стоппи, бернаут, дрифт, акро‑элементы
- Курс «Мотосопровождение»: предиктивное вождение, экстренные действия, маршруты
- Галерея (Swiper + GLightbox), анимации (AOS), отзывчивый интерфейс (Bootstrap)
- Cookie‑баннер с отложенной загрузкой аналитики (GA/YM)
- SEO: OG‑картинка 1200×630, JSON‑LD (`Organization`, `Course`), `sitemap.xml`, `robots.txt`, `humans.txt`

## 🧩 Технологии
- Bootstrap 5 + Bootstrap Icons
- AOS (анимации при прокрутке)
- Swiper (слайдер), GLightbox (лайтбокс)

## 📂 Структура
- `index.html` — главная страница
- `privacy.html` — политика конфиденциальности
- `images/` — изображения и OG‑кадр (`images/og-1200x630.jpg`)
- `icons/` — favicon/PWA иконки (`moto-icon.svg`, `icon-16/32/180/192/256/512.png`)
- `scripts/gen-icons.mjs` — генерация PNG‑иконок из `moto-icon.svg`
- `sitemap.xml`, `robots.txt`, `humans.txt` — SEO/поддержка

## 🔧 Локальный запуск
- Просто откройте `index.html` двойным кликом, либо:
- Python 3: `python3 -m http.server 8080` → `http://localhost:8080`

## 📈 Аналитика (по согласию)
Включите реальные ID в `index.html` (баннер согласия загрузит скрипты после «Принять»):
- `GA_ID = 'G-XXXXXXXXXX'` — ваш Google Analytics 4 Measurement ID
- `YM_ID = 0` — ID счётчика Яндекс.Метрики

## 🖼️ Иконки и PWA
- Сгенерировать PNG из `icons/moto-icon.svg`:
  1) `npm init -y`
  2) `npm i sharp to-ico`
  3) `node scripts/gen-icons.mjs`
- Скрипт создаст `icons/icon-16.png`, `icon-32.png`, `icon-180.png`, `icon-192.png`, `icon-256.png`, `icon-512.png` и `favicon.ico` в корне.
- Манифест: `manifest.json` (id, scope, description, иконки)

## 🔍 SEO и оглавление
- Канонический URL и OG: `https://ilayteamdv.ru/`
- OG‑картинка: `images/og-1200x630.jpg`
- Карты сайта/роботы: `sitemap.xml`, `robots.txt`
- Структурированные данные: блоки JSON‑LD в `index.html`

## 🔐 Приватность
- Политика: [`privacy.html`](privacy.html)
- Форма записи открывает почтовое приложение с предзаполненным письмом на `stunter27@mail.ru`

## 🤝 Контакты
- Сайт: https://ilayteamdv.ru
- Telegram: https://t.me/ILAY_MOTO
- VK: https://vk.com/wall45244240_2204
- Почта: `stunter27@mail.ru`

---
© ilayTeam. Все права защищены.


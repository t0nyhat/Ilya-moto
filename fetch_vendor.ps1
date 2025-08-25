# PowerShell fetch script for vendor files
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
New-Item -ItemType Directory -Force -Path "$Root\vendor\bootstrap\5.3.3\css" | Out-Null
New-Item -ItemType Directory -Force -Path "$Root\vendor\bootstrap\5.3.3\js" | Out-Null
New-Item -ItemType Directory -Force -Path "$Root\vendor\bootstrap-icons\1.11.3\font\fonts" | Out-Null
New-Item -ItemType Directory -Force -Path "$Root\vendor\swiper\11.0.7" | Out-Null
New-Item -ItemType Directory -Force -Path "$Root\vendor\glightbox\3.3.0\css" | Out-Null
New-Item -ItemType Directory -Force -Path "$Root\vendor\aos\2.3.4" | Out-Null

Invoke-WebRequest "https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" -OutFile "$Root\vendor\bootstrap\5.3.3\css\bootstrap.min.css"
Invoke-WebRequest "https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.bundle.min.js" -OutFile "$Root\vendor\bootstrap\5.3.3\js\bootstrap.bundle.min.js"

Invoke-WebRequest "https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.3/font/bootstrap-icons.min.css" -OutFile "$Root\vendor\bootstrap-icons\1.11.3\font\bootstrap-icons.min.css"
Invoke-WebRequest "https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.3/font/fonts/bootstrap-icons.woff2" -OutFile "$Root\vendor\bootstrap-icons\1.11.3\font\fonts\bootstrap-icons.woff2"

Invoke-WebRequest "https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" -OutFile "$Root\vendor\swiper\11.0.7\swiper-bundle.min.css"
Invoke-WebRequest "https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js" -OutFile "$Root\vendor\swiper\11.0.7\swiper-bundle.min.js"

Invoke-WebRequest "https://cdn.jsdelivr.net/npm/glightbox/dist/css/glightbox.min.css" -OutFile "$Root\vendor\glightbox\3.3.0\css\glightbox.min.css"
Invoke-WebRequest "https://cdn.jsdelivr.net/npm/glightbox/dist/js/glightbox.min.js" -OutFile "$Root\vendor\glightbox\3.3.0\glightbox.min.js"

Invoke-WebRequest "https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" -OutFile "$Root\vendor\aos\2.3.4\aos.css"
Invoke-WebRequest "https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js" -OutFile "$Root\vendor\aos\2.3.4\aos.js"

Write-Host "Done. Commit the /vendor folder with index_self_hosted.html"

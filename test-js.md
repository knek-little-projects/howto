есть сторонний js, надо проанализировать безопасность

если нет исходников:
• закидываю скрипт в пустую html и через бурп смотрю, какие запросы делает -- нет ли подозрительных трекеров, не утекают ли наши рефереры или ещё какая инфа
• на нормальной странице сайта, куда должен попасть скрипт, уже после того как страница загрузилась, в консоле пишем `document.write("<script...></script>")` и в бурпе смотрю, какие доп ресурсы начали подгружаться, нет ли новых, по сравнению с первым шагом
• смотрю как меняется загрузка ЦП страницы после подгрузки скрипта  (майнеры-хуяйнеры)

дополнительно, если есть исходники, то 
• изучаю глазами на предмет dom xss
• смотрю какие ссылки упоминаются внутри, нет ли среди них подозрительных
• смотрю, нет ли каких-нибудь узких мест, которые могут загрузить браузер (redos, циклы while) 
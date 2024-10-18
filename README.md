# File structure  
.
├── Dockerfile  
├── README.md  
├── init.lua  
└── lua  
    └── t0xa  
        ├── core  
        │   └── options.lua  
        └── plugins  
            └── lazy.lua  

## init.lua
Файл, в который "смотрит" neovim при [старте](https://neovim.io/doc/user/starting.html#initialization).

## t0xa
Вместо того, чтобы использовать обращение к файлам настройки напрямую - используется данная 
папка.  
Можно обходиться без нее, однако для избегания конфликтов нейминга решил что буду использовать 
так.
## core
Тут хранятся базовые настройки для neovim
## plugins
Папка для хранения и настроек плагинов для neovim

# Main options  


# Useful links  
- [neovim stup guide](https://www.youtube.com/watch?v=6pAG3BHurdM)

# Команда для запуска контейнеров

```
docker build -t nvim:nvim . && docker run -it --user nvim_playground nvim:nvim
```

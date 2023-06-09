function web-search -d "Search on web"
    switch $argv[1]
        case google
            set url "https://www.google.com/search?q="

        case youtube
            set url "https://www.youtube.com/results?search_query="

        case bing
            set url "https://www.bing.com/search?q="

        case yahoo
            set url "https://search.yahoo.com/search?p="

        case duckduckgo
            set url "https://www.duckduckgo.com/?q="

        case startpage
            set url "https://www.startpage.com/do/search?q="

        case yandex
            set url "https://yandex.ru/yandsearch?text="

        case github
            set url "https://github.com/search?q="

        case baidu
            set url "https://www.baidu.com/s?wd="

        case ecosia
            set url "https://www.ecosia.org/search?q="

        case goodreads
            set url "https://www.goodreads.com/search?q="

        case qwant
            set url "https://www.qwant.com/?q="

        case givero
            set url "https://www.givero.com/search?q="

        case stackoverflow
            set url "https://stackoverflow.com/search?q="

        case wolframalpha
            set url "https://www.wolframalpha.com/input/?i="

        case archive
            set url "https://web.archive.org/web/*/"

        case scholar
            set url "https://scholar.google.com/scholar?q="

        case nixpkgs
            set url "https://search.nixos.org/packages?query="

        case nixoptions
            set url "https://search.nixos.org/options?query="

        case aur
            set url "https://aur.archlinux.org/packages?K="

        case gpo
            set url "https://gpo.zugaina.org/Search?search="

        case searx
            set url "https://searx.org/search?q="

        case brave
            set url "https://search.brave.com/search?q="

        ### DEFAULT
        case '*'
            set custom_search
            set custom_urls
            for var in (env | grep ^WEB_SEARCH)
                set -l context (string split -m 1 = $var)[1]
                set -a custom_search ( echo "$context" | string sub -s 12)

                set -l url (string split -m 1 = $var)[2]
                set -a custom_urls $url
            end

            if contains $argv[1] $custom_search
                set -l index (contains -i $argv[1] $custom_search)
                set url $custom_urls[$index]
            else
                echo "'$argv[1]' is not supported."
                return 1
            end               
    end


    if test (count $argv) -ge 2
       set query (string escape --style=url $argv[2..-1])
    else
        set query ''
    end

    set -l open_cmd

    switch (uname)
        case Linux
            set open_cmd "nohup xdg-open"
        case Darwin
            set open_cmd "open"
    end

    eval "$open_cmd '$url$query' &> /dev/null & disown"
end

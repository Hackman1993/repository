package("sahara")
    set_homepage("http://www.zlib.net")
    set_description("Hackman.Lo's Util")
    set_urls("https://github.com/Hackman1993/Sahara.git")
    add_versions("1.0.0", "62fe45dd9b98334e17ed0c722c68a661c2bf0bae")



    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)
    on_test(function (package)
    end)

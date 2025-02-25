package("sahara")
    set_homepage("http://www.zlib.net")
    set_description("Hackman.Lo's Util")
    set_urls("https://github.com/Hackman1993/Sahara.git")
    add_version("1.0.0", "5e7da3565bfe30a89df7bfb5462986e91c695662")



    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)
    on_test(function (package)
        assert(package:has_cfuncs("inflate", {includes = "zlib.h"}))
    end)

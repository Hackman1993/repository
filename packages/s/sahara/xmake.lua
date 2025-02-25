package("sahara")
    set_homepage("http://www.zlib.net")
    set_description("Hackman.Lo's Util")
    set_version("1.0.0")
    set_urls("https://github.com/Hackman1993/Sahara.git")



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

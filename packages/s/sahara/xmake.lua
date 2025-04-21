package("sahara")
    set_homepage("http://www.zlib.net")
    set_description("Hackman.Lo's Util")
    set_urls("https://github.com/Hackman1993/Sahara.git")
    add_versions("1.0.0", "45bbedd5395438d1b1731fcca15462e7df79de02")



    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        os.cp("include/*", package:installdir("include/sahara"))
        import("package.tools.xmake").install(package, configs)
    end)
    on_test(function (package)
    end)

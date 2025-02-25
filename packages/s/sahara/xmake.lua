package("sahara")
    set_homepage("http://www.zlib.net")
    set_description("Hackman.Lo's Util")
    set_urls("https://github.com/Hackman1993/Sahara.git")
    add_versions("1.0.0", "f8e42d3ddedd04a742caf55087c7a7676686e02d")



    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        os.cp("include/**/*.h", package:installdir("include/"))
        import("package.tools.xmake").install(package, configs)
    end)
    on_test(function (package)
    end)

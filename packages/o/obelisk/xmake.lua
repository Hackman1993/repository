package("obelisk")
    set_description("The obelisk package")
    add_deps("sahara")
    add_deps("boost >=1.87.0", {configs={asio=true,cobalt=true,thread=true,json=true}})
    add_deps("spdlog")
    add_deps("openssl")

    add_urls("git@github.com:Hackman1993/obelisk_asio_coro.git")
    add_versions("1.0.0", "13d182e44ae1d35d68c03e882bf1fc4bc6ffacdb")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        os.cp("include/*", package:installdir("include/"))
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)

{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "direct-http"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Irene Knapp";
      maintainer = "\"Irene Knapp\" <ireney.knapp@gmail.com>";
      author = "Irene Knapp";
      homepage = "http://ireneknapp.com/software/";
      url = "";
      synopsis = "Native webserver that acts as a library.";
      description = "This package is a native implementation of the HTTP and HTTPS protocols.\nIt lives as a library, exporting an interface reminiscent of CGI or FastCGI.\nThus policy on how namespace is mapped to files and/or scripts is entirely up\nto the client application.\n\nThis package is partially compatible with direct-fastcgi by the same\nauthor, but is intended more by way of a replacement for it than a companion\nto it, and makes several design decisions differently.  The biggest is the\nuse of MonadControlBase for exceptions.\n\nVersion 0.5: This preliminary release is a preview to gauge community\ninterest.  Not even all major features are implemented; things that exist\nonly as stubs include encryption, compression, chunking, and reading back\ncookies.  Nonetheless it may be useful if run behind a reverse proxy that\nprovides the missing features transparently, such as Apache.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.utf8-string)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.unix)
          (hsPkgs.direct-daemonize)
          (hsPkgs.transformers-base)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          ];
        };
      };
    }
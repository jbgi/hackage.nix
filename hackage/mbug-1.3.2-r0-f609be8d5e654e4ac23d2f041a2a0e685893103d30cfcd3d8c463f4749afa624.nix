{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "mbug"; version = "1.3.2"; };
      license = "GPL-3.0-only";
      copyright = "2018 Dmitry Bogatov";
      maintainer = "KAction@gnu.org";
      author = "Dmitry Bogatov";
      homepage = "https://gitlab.com/iu-guest/mbug";
      url = "";
      synopsis = "download bugs mailboxes";
      description = "See readme at https://gitlab.com/iu-guest/mbug";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.formatting)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.scalpel-core)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.xdg-basedir)
          ];
        };
      exes = {
        "mbug" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.formatting)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.mbug)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.scalpel-core)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.xdg-basedir)
            ];
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hpaste"; version = "0.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "2010-2013 by Chris Done";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "http://hpaste.org/";
      url = "";
      synopsis = "Haskell paste web site.";
      description = "Haskell paste web site.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpaste" = {
          depends = [
            (hsPkgs.Diff)
            (hsPkgs.blaze-html)
            (hsPkgs.base)
            (hsPkgs.css)
            (hsPkgs.named-formlet)
            (hsPkgs.snap-app)
            (hsPkgs.ConfigFile)
            (hsPkgs.HJScript)
            (hsPkgs.MissingH)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.download-curl)
            (hsPkgs.feed)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.hlint)
            (hsPkgs.hscolour)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.safe)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.mime-mail)
            (hsPkgs.cgi)
            (hsPkgs.process)
            (hsPkgs.postgresql-simple)
            ];
          };
        };
      };
    }
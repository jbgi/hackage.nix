{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { threaded = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hlint"; version = "1.8.46"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2006-2013";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/hlint/";
      url = "";
      synopsis = "Source code suggestions";
      description = "HLint gives suggestions on how to improve your source code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.hscolour)
          (hsPkgs.cpphs)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.uniplate)
          ];
        };
      exes = { "hlint" = { depends = [ (hsPkgs.base) ]; }; };
      };
    }
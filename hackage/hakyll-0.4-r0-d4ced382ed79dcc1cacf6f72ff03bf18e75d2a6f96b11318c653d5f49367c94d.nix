{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hakyll"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaspervdj@gmail.com";
      author = "Jasper Van der Jeugt";
      homepage = "http://jaspervdj.be/hakyll";
      url = "";
      synopsis = "A simple static site generator library.";
      description = "A simple static site generator library, mainly aimed at\ncreating blogs and brochure sites.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.pandoc)
          (hsPkgs.regex-compat)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          ];
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-dsl"; version = "0.1.1.14"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tero Laitinen";
      author = "Tero Laitinen";
      homepage = "https://github.com/tlaitinen/yesod-dsl";
      url = "";
      synopsis = "DSL for generating Yesod subsite to manage an RDBMS;";
      description = "A domain specific language and a code generator desined to create RESTful services for managing an RDBMS with Yesod web framework and Persistent.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yesod-dsl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.shakespeare-text)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.MissingH)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.strict)
            (hsPkgs.Cabal)
            ];
          build-tools = [
            ((hsPkgs.buildPackages).alex)
            ((hsPkgs.buildPackages).happy)
            ];
          };
        };
      };
    }
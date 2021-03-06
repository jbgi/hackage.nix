{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-wlc"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2016 Ashley Towns";
      maintainer = "mail@ashleytowns.id.au";
      author = "Ashley Towns";
      homepage = "http://github.com/aktowns/bindings-wlc#readme";
      url = "";
      synopsis = "Bindings against the wlc library";
      description = "Please see Readme.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bindings-DSL) (hsPkgs.convertible) ];
        libs = [ (pkgs."wlc") ];
        };
      tests = {
        "bindings-wlc-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.bindings-wlc) ];
          };
        };
      };
    }
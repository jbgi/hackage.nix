{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; usedouble = true; useframework = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hCsound"; version = "0.4.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "John W. Lato, jwlato@gmail.com";
      author = "John W. Lato, jwlato@gmail.com";
      homepage = "";
      url = "";
      synopsis = "interface to CSound API";
      description = "Haskell interface to Csound API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ] ++ (if flags.splitbase
          then [ (hsPkgs.base) (hsPkgs.base) ]
          else [ (hsPkgs.base) ]);
        libs = [
          (pkgs."sndfile")
          ] ++ (pkgs.lib).optionals (!(system.isOsx && flags.useframework)) (if flags.usedouble
          then [ (pkgs."csound64") ]
          else [ (pkgs."csound32") ]);
        frameworks = (pkgs.lib).optionals (system.isOsx && flags.useframework) (if flags.usedouble
          then [ (pkgs."CsoundLib64") ]
          else [ (pkgs."CsoundLib") ]);
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }
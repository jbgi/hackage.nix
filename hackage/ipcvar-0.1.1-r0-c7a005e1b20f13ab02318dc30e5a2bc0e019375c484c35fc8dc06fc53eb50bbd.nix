{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ipcvar"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Simple inter-process communication through IPCVars.";
      description = "IPCVars allows you to communicate values between forked processes (with\n'forkProcess').  There are several backends possible, with the first\navailable being simple files using POSIX file locking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.uuid)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ipcvar)
            (hsPkgs.unix)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }
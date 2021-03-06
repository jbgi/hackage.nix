{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; usenativewindowslibraries = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "GLUT"; version = "2.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sven Panne <sven.panne@aedion.de>";
      author = "";
      homepage = "http://www.haskell.org/HOpenGL/";
      url = "";
      synopsis = "A binding for the OpenGL Utility Toolkit";
      description = "A Haskell binding for the OpenGL Utility Toolkit, a window system independent\ntoolkit for writing OpenGL programs. For more information about the C library\non which this binding is based, please see:\n<http://www.opengl.org/resources/libraries/glut/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.OpenGL)
          (hsPkgs.StateVar)
          (hsPkgs.Tensor)
          ] ++ (if flags.split-base
          then [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.containers) ]
          else [ (hsPkgs.base) ]);
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."glut32") ]
          else [ (pkgs."glut") ];
        };
      };
    }
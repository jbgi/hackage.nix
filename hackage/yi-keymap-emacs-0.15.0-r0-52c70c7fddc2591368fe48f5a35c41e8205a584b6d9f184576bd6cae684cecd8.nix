{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yi-keymap-emacs"; version = "0.15.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Emacs keymap for Yi editor";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.Hclip)
          (hsPkgs.microlens-platform)
          (hsPkgs.mtl)
          (hsPkgs.oo-prototypes)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
          (hsPkgs.yi-core)
          (hsPkgs.yi-misc-modes)
          (hsPkgs.yi-language)
          (hsPkgs.yi-rope)
          ];
        };
      };
    }
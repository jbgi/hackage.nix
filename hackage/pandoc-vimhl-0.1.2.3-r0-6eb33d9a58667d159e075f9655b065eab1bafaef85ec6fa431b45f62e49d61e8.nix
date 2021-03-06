{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "pandoc-vimhl"; version = "0.1.2.3"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "http://github.com/lyokha/vim-publish-helper";
      url = "";
      synopsis = "Pandoc filter for native Vim code highlighting";
      description = "Pandoc filter for native Vim code highlighting\nin HTML and PDF documents. Requires Vim and plugin\n<http://github.com/lyokha/vim-publish-helper vim-publish-helper>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "vimhl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc-types)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.regex-compat)
            (hsPkgs.cond)
            ];
          };
        };
      };
    }
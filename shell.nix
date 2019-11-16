{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  inherit (lib) optional optionals;

  elixir = beam.packages.erlangR22.elixir_1_9;
in

mkShell {
  buildInputs = [
    elixir
  ]
    ++ optionals stdenv.isDarwin (with darwin.apple_sdk.frameworks; [
      # For file_system on macO.S
      CoreFoundation
      CoreServices
      clang_8
    ]);

  # Fix GLIBC Locale
  LOCALE_ARCHIVE = stdenv.lib.optionalString stdenv.isLinux
    "${pkgs.glibcLocales}/lib/locale/locale-archive";
  LANG = "en_US.UTF-8";

  ERL_INCLUDE_PATH="${erlangR22}/lib/erlang/usr/include";
}

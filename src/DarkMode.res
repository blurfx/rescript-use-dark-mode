type t = {
  value: bool,
  enable: unit => unit,
  disable: unit => unit,
  toggle: unit => unit,
}

type config = {
  classNameDark: option<string>,
  classNameLight: option<string>,
  element: option<Dom.element>,
  onChange: option<(option<bool>) => unit>,
  storageKey: option<string>,
  storageProvider: option<Dom.Storage.t>,
}

@module("use-dark-mode") external use: (. option<bool>, option<config>) => t = "default"

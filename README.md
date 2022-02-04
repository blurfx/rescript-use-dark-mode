# rescript-use-dark-mode

ReScript bindings for [use-dark-mode](https://github.com/donavon/use-dark-mode)

## Installation

Install package:
```bash
$ yarn add rescript-use-dark-mode
// OR 
$ npm i rescript-use-dark-mode
```

Then add `rescript-use-dark-mode` to your `bsconfig.json`'s `bs-dependencies`
```diff
{
  "bs-dependencies": [
    "@rescript/react",
+   "rescript-use-dark-mode"
  ],
}
```

## Usage

```rescript
let darkMode = DarkMode.use(. None, None);

// or with default value
let darkMode = DarkMode.use(. Some(false), None);

// or with default value and config
let config: DarkMode.config = {
  classNameDark: Some("dark"),
  classNameLight: Some("light"),
  // and so on
}
let darkMode = DarkMode.use(. Some(false), Some(config));


// in react component
let onClick= (_: ReactEvent.Mouse.t) => {
  darkMode.toggle();
}

let currentTheme = switch darkMode.value {
  | true => React.string(`dark`)
  | false => React.string(`light`)
}

<Button onClick>currentTheme</Button>
```

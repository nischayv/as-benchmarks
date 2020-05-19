module.exports = {
  parser: '@typescript-eslint/parser',
  extends: [
    'eslint:recommended',
    'plugin:@typescript-eslint/eslint-recommended',
    'plugin:@typescript-eslint/recommended',
    'plugin:prettier/recommended'
  ],
  parserOptions: {
    ecmaVersion: 2020, // Allows for the parsing of modern ECMAScript features
    sourceType: 'module' // Allows for the use of imports
  },
  env: {
    'browser': true,
    'es2020': true
  },
  rules: {
    '@typescript-eslint/no-namespace': 'off',
    '@typescript-eslint/ban-ts-ignore': 'off'
  }
};

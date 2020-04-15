// module.exports = {
//   extends: ['airbnb-typescript/base',
//     "plugin:@typescript-eslint/eslint-recommended",
//     "plugin:@typescript-eslint/recommended"
//   ],
//   parserOptions: {
//     project: './assembly/tsconfig.json',
//   },
// };
module.exports = {
  parserOptions: {
    project: './assembly/tsconfig.json'
  },
  plugins: [
    '@typescript-eslint',
  ],
  extends: [
    'eslint:recommended',
    'plugin:@typescript-eslint/eslint-recommended',
    'plugin:@typescript-eslint/recommended',
  ],
};

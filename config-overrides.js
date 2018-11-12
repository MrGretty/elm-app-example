const { override, addDecoratorsLegacy, disableEsLint, addBabelPlugins } = require('customize-cra');

module.exports = override(
  addDecoratorsLegacy(),
  disableEsLint(),
  ...addBabelPlugins('@babel/plugin-proposal-optional-chaining', [
    '@babel/plugin-proposal-pipeline-operator',
    {
      proposal: 'minimal',
    },
  ]),
);

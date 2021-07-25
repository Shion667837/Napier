build: {
  babel: {
    plugins: [
      [
        "@babel/plugin-proposal-private-methods",
        {
          "loose": true
        }
      ]
    ]
  }
}
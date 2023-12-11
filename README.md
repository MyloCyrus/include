# include
{
Hackers = RU.R - R.UR
_____--------_____`°-_.-°`
}
U.LOOK
target: buzz.makefile

on:
  push:
    branches: [ "gitinit" ]
  pull_request:
    branches: [ "gitinit" ]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3

    - name: configure
      run: ./configure

    - name: Install dependencies
      run: make

    - name: Run check
      run: make check

    - name: Run distcheck
      run: make distcheck

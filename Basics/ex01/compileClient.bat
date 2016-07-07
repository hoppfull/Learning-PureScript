@ECHO OFF

CALL cd client

CALL pulp build --to ../public/main.js

PAUSE
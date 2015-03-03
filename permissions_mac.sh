
#!/bin/bash

rm -fr web/bundles/*
rm -fr web/media_liip/cache/*

sudo chmod +a "_www allow delete,write,append,file_inherit,directory_inherit" web/bundles

sudo chmod +a "_www allow delete,write,append,file_inherit,directory_inherit" web/media_liip

sudo chmod +a "`whoami` allow delete,write,append,file_inherit,directory_inherit" web/bundles

sudo chmod +a "`whoami` allow delete,write,append,file_inherit,directory_inherit" web/media_liip



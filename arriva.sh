#!/bin/bash
# Script to authenticate on the Arriva free train wireless system without having to open up a webbrowser.
# This script depends on curl.

curl --data "command=StartFreeInternetSession" http://192.168.101.1/goInternet.php
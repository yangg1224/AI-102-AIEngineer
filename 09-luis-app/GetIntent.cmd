@echo off

rem Set values for your Language Understanding app
set app_id=27caddc7-eddc-4d3f-b7eb-8e771bf4bd2b
set endpoint=https://lu1224.cognitiveservices.azure.com/
set key=988447e84f6645f6b5ab1a6964fe9a40

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"
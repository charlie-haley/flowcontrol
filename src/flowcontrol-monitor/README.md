Publish app to single exe
dotnet publish -r win-x64 -c Release /p:PublishSingleFile=true --self-contained True
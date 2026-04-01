@echo off
echo Building...
pnpm build

echo Deploying...
cd dist
git add .
git commit -m "Update blog - %date% %time%"
git push
cd ..

echo Done!
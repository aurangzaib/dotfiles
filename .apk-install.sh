# install android apk in bulk
for file in apps/*
do
  adb install -r "$file"
done
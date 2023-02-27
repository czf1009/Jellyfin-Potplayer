1. 油猴脚本的match规则得改一下

2. 要先看看注册表写入是否成功，不知道是不是原来potplayer写入过注册表，得先删除值后再运行potplayer.reg,否则会因为略过了脚本的url转码导致本地路径错误!

3. 需要特别注意双引号的有无，会导致调用程序失败或者传url失败

4. 尝试了AHK，python都没成功，卡在了传值这一步

5. 最后成功时，注册表里的具体值为：
powershell -File "D:\Program Files\jellyfin_10.8.9\Jellyfin-Potplayer\potplayer.ps1" %1
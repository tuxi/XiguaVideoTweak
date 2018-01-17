# iOS 西瓜视频Tweak 实现最简单的百万英雄辅助

百万英雄出题5-10秒就没了，太快了导致没时间思考就结束了，周六日在家用Tweak的方式研究下西瓜视频中百万英雄答题实现:

<img src = "https://github.com/alpface/XiguaVideoTweak/blob/master/Video/img1.png?raw=true" width = "1015" height = "682" alt = "Screenshot1.png"/>

<img src = "https://github.com/alpface/XiguaVideoTweak/blob/develop/Video/2018-01-15%2023_25_24.gif?raw=true?raw=true" width = "375" height = "667" alt = "Screenshot2.png"/>

#### 使用：
- 点击英雄直播辅助时，iPhone上弹出一个webview；
- 当显示问题时，在webview上根据钩子获取到的问题文本，在百度搜索答案；
- 当显示问题时，此题目文本已被复制到iPhone剪切板，如果你的mac和iPhone用同一个账号，直接在浏览器粘贴进行搜索；

缺点：
> 由于手机屏幕小所以再弹出个页面体验不好，
> 有些问题可能搜不到结果: 当遇到那种根据下面选项为条件的题目时，就肯定搜索不到结果了；

另外答案选项也都可以获取到，暂时还未利用起来；


#### 主要更新日志
- 2018-1-14 添加mac端监听剪切板改变，当运行VideoMac后：问题文本一旦发生改变，自动打开safari搜索问题！
- 2018-1-15 更新WebView显示区域，优化UI;
- 2018-1-16 让西瓜视频支持iPad，并在iPad上运行，WebView上添加调整高度按钮;
- 预计：2018-1-17 通过问题进行搜索，解析html，匹配问题选项，高亮筛选到的结果，如果快到时间时自动选择匹配到的最佳结果，未到时用户自行选择答案;

    
```
#### 其他小技巧
- 让西瓜视频支持iPad，并在iPad上运行
> 由于西瓜视频只支持iPhone，而iPhone屏幕较小，展示一个WebView效果并不是很理想，那就让他在iPad上运行，下面是修改的方法：
1. 修改Video.app文件下的info.plist文件，找到UIDeviceFamily这个key，将其对应的value(是一个Array)中的item0的值由1修改为2即可。
2. 安装到iPad上，如果通过Run Script安装，此时会出现一些错误，可尝试先Clean下Xcode 将iPad上原有的西瓜视频删除后，再重新安装修改过的；
3. 这里我遇到一个启动Crash的问题，问题如下:
```
ideo[1600:364634] *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: 'Could not find a storyboard named 'RootTabPad' in bundle NSBundle </var/containers/Bundle/Application/A8D878C3-F7B8-48C7-A530-48325F7F4346/Video.app> (loaded)'
```
问题原因: Video.app中缺少`RootTabPad.storyboardc`， 我在Video.app中搜索并未查找，但是找到了`RootTab.storyboardc`，尝试将`RootTab.storyboardc`修改为`RootTabPad.storyboardc`，然后重新安装到iPad，可正常运行



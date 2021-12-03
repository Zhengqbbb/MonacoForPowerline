# Monaco For Powerline
- Like powerline font install to set Monaco for powerline font
- base: [lujiacn-gist](https://gist.github.com/lujiacn/32b598b1a6a43c996cbd93d42d466466)
> 下载方式和powerline font类似，但我做了一键化处理，故只用跑一条脚本即可，感谢lujiacn的gist，将powerline符号添加到Monaco之中。

# Monaco Font
Monaco is a monospaced sans-serif typeface designed by Susan Kare and Kris Holmes. It ships with macOS and was already present with all previous versions of the Mac operating system. Is my favorite terminal font.
> Monaco是一个无衬线等宽字体，由美国的苏珊·卡尔与克莉丝·荷姆斯于1983年创造。Monaco被选为Mac OS X的内置字体之一，因为具有美观与容易识别的优点，常作为电脑指令与代码的显示之用。是我最喜欢的终端字体。

<img src="https://tvax1.sinaimg.cn/large/6ccee0e1gy1gx0cv0ig12j20ww0hwq8f.jpg" alt="企业微信20211203-084813@2x" width="1184" data-width="1184" data-height="644">

## Install
> use github. base curl and git
```sh
eval "$(curl https://raw.githubusercontent.com/Zhengqbbb/MonacoForPowerline/main/install.sh)"
```

### Use gitee install | 国内gitee安装源
> use gitee. base curl and git
```sh
eval "_REMOTE=gitee _G_USER=AAAben" "$(curl https://gitee.com/AAAben/MonacoForPowerline/raw/main/install.sh)"
```

#### PS: Windows Install and set Windows Terminal
- Windows need to find the ttf file and right click to install font, so I hope you use **git bash**

- I personally think that using [cascadia-code fonts](https://github.com/microsoft/cascadia-code) in the windows environment is much better than Monaco fonts. He also has patch fonts supported by powerline symbols. I also integrated his download method[cascadia-code installation repo](https://github.com/Zhengqbbb/CascadiaForPowerline).
> windows系统需要找到ttf资源文件手动右键安装字体,我希望你是使用git bash去运行本脚本这样你会获得相应的提示

> 个人觉得在windows环境下使用cascadia-code字体比Monaco字体好看很多，他也有powerline符号的支持的补丁字体，我也集成了他的下载方式:[cascadia-code installation repo](https://github.com/Zhengqbbb/CascadiaForPowerline).

---

<img src="https://tvax1.sinaimg.cn/large/6ccee0e1gy1gx0vw6gmj5j22yg19we82.jpg" alt="af9c57cb89ae0a1f81514e86604f78a3 (1)" width="3832" data-width="3832" data-height="1652">

## Set the font
- Windows Terminal: Open settings,Find the default value in the right column, select the appearance, and then select the font "Monaco for Powerline"
- Mac Terminal: Use `command + ,` And then find font, Choose: "Monaco for Powerline"
- Ubuntu Terminal: Use mouse right click to open the setting(P), Find text, And then choose: "Monaco for Powerline Bold"
- VSCode: Editor `setting.json` add json item "terminal.integrated.fontFamily": "Monaco for Powerline"
- iTerm2: Use `command + ,` Find Profiles - Text - Font, And then choose: "Monaco for Powerline"

> More settings: https://github.com/Zhengqbbb/MonacoForPowerline/issues/1

> 字体安装完成后是需要手动设置终端软件的字体设置的。

#### If you think my installation script is nice, you can give me a star
> 如果你觉得安装脚本写的不错的话，可以给我一个star哦！~
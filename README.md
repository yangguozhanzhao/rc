# linux下vim与git的配置文件
.vimrc文件与.gitconfig文件   
使用git保持rc与本地~/rc文件的同步

## .vimrc使用说明

### 安装步骤
1.安装vim  
2.安装vundle   
```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```  
3.安装Ctag
``` sudo apt-get Ctags```

4.创建.vimrc链接   
```
ln -s ~/vimrc/.vimrc ~/.vimrc
```
5.打开vim，运行' BundleInstall'      

###功能与插件的快捷键
* NERDTree 文件浏览器 F3
* Pydiction python自动补齐 tab
* quikfix 调试窗口
* taglist 需要安装ctags 
* snipMate 自定义自动补全 c-n



## .gitconfig使用说明
### 安装步骤
创建.gitconfig 链接

###操作说明
简写命令
```
    co = checkout  
    ci = commit  
    st = status  
    pl = pull  
    ps = push  
    dt = difftool  
    l = log --stat  
    cp = cherry-pick  
    ca = commit -a  
    b = branch 
```

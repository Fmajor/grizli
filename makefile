# you should be in the `jin` branch

all:
	@cat makefile
git-remote:
	git remote -v
git-set-remotes:
	-git remote add jin   git@github.com:Fmajor/grizli.git
	-git remote add xwang git@github.com:albertfxwang/grizli.git
fetch:
	git fetch xwang xwang
	git fetch jin jin
diff:
	git diff jin/jin xwang/xwang
diff-tree:
	git diff jin/jin xwang/xwang
merge-from-xwang:
	git checkout jin
	git fetch xwang xwang
	git merge xwang/xwang

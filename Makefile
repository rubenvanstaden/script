diff:
	cp "$(HOME)/.bashrc" bashrc

install:
	ln -sf $(PWD)/bashrc.sh $(SCRIPT)/rc
	ln -sf $(PWD)/reload.sh $(SCRIPT)/reload
	ln -sf $(PWD)/path.sh $(SCRIPT)/path
	ln -sf $(PWD)/shebang.sh $(SCRIPT)/shebang
	ln -sf $(PWD)/reload.sh $(SCRIPT)/reload

zet:
	ln -sf $(PWD)/journal-day.sh $(SCRIPT)/jd
	ln -sf $(PWD)/journal-week.sh $(SCRIPT)/jw
	ln -sf $(PWD)/zettel-new.sh $(SCRIPT)/zn
	ln -sf $(PWD)/zettel-last.sh $(SCRIPT)/zl

snip:
	ln -sf $(PWD)/md-title.sh $(SCRIPT)/md-title
	ln -sf $(PWD)/c-malloc.sh $(SCRIPT)/c-malloc
	ln -sf $(PWD)/c-assert-array.sh $(SCRIPT)/c-assert-array

install: sh zet bash c cpp rust snip

sh:
	ln -sf $(PWD)/bashrc.sh $(SCRIPT)/rc
	ln -sf $(PWD)/reload.sh $(SCRIPT)/reload
	ln -sf $(PWD)/path.sh $(SCRIPT)/path
	ln -sf $(PWD)/shebang.sh $(SCRIPT)/shebang
	ln -sf $(PWD)/reload.sh $(SCRIPT)/reload
	ln -sf $(PWD)/doc.sh $(SCRIPT)/doc

zet:
	ln -sf $(PWD)/md-title.sh $(SCRIPT)/md-title
	ln -sf $(PWD)/journal-day.sh $(SCRIPT)/jd
	ln -sf $(PWD)/journal-week.sh $(SCRIPT)/jw
	ln -sf $(PWD)/zettel-new.sh $(SCRIPT)/zn
	ln -sf $(PWD)/zettel-last.sh $(SCRIPT)/zl
	ln -sf $(PWD)/zettel-search.sh $(SCRIPT)/zs

bash:
	ln -sf $(PWD)/bash-here-doc.sh $(SCRIPT)/bash-here-doc
	ln -sf $(PWD)/bash-temp.sh $(SCRIPT)/bash-temp

c:
	ln -sf $(PWD)/c-malloc.sh $(SCRIPT)/c-malloc
	ln -sf $(PWD)/c-main.sh $(SCRIPT)/c-main
	ln -sf $(PWD)/c-assert-array.sh $(SCRIPT)/c-assert-array
	ln -sf $(PWD)/c-swap.sh $(SCRIPT)/c-swap

cpp:
	ln -sf $(PWD)/cpp-tree-node.sh $(SCRIPT)/cpp-tree-node
	ln -sf $(PWD)/cpp-tree-bfs.sh $(SCRIPT)/cpp-tree-bfs
	ln -sf $(PWD)/cpp-tree-test.sh $(SCRIPT)/cpp-tree-test
	ln -sf $(PWD)/cpp-main.sh $(SCRIPT)/cpp-main
	ln -sf $(PWD)/cpp-queue.sh $(SCRIPT)/cpp-queue

rust:
	ln -sf $(PWD)/rust-test.sh $(SCRIPT)/rust-test

snip:
	ln -sf $(PWD)/bit-ops.sh $(SCRIPT)/bit-ops

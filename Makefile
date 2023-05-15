install: sh zet bash c cpp rust snip

sh:
	ln -sf $(PWD)/bashrc.sh $(SCRIPT)/rc
	ln -sf $(PWD)/reload.sh $(SCRIPT)/reload
	ln -sf $(PWD)/path.sh $(SCRIPT)/path
	ln -sf $(PWD)/doc.sh $(SCRIPT)/doc
	ln -sf $(PWD)/cmt.sh $(SCRIPT)/cmt
	ln -sf $(PWD)/ex.sh $(SCRIPT)/ex
	ln -sf $(PWD)/cheat-vim.sh $(SCRIPT)/cv

zet:
	ln -sf $(PWD)/journal-day.sh $(SCRIPT)/jd
	ln -sf $(PWD)/journal-week.sh $(SCRIPT)/jw
	ln -sf $(PWD)/zettel-new.sh $(SCRIPT)/zn
	ln -sf $(PWD)/zettel-last.sh $(SCRIPT)/zl
	ln -sf $(PWD)/zettel-search.sh $(SCRIPT)/zs
	ln -sf $(PWD)/zettel-tags.sh $(SCRIPT)/zt

bash:
	ln -sf $(PWD)/sh-shebang.sh $(SCRIPT)/shebang
	ln -sf $(PWD)/sh-here.sh $(SCRIPT)/here
	ln -sf $(PWD)/script-new.sh $(SCRIPT)/sn

c:
	ln -sf $(PWD)/c-malloc.sh $(SCRIPT)/c-malloc
	ln -sf $(PWD)/c-main.sh $(SCRIPT)/c-main
	ln -sf $(PWD)/c-assert-array.sh $(SCRIPT)/c-assert-array
	ln -sf $(PWD)/c-swap.sh $(SCRIPT)/c-swap

cpp:
	ln -sf $(PWD)/cpp-build.sh $(SCRIPT)/cpp-build
	ln -sf $(PWD)/cpp-tree-node.sh $(SCRIPT)/cpp-tree-node
	ln -sf $(PWD)/cpp-tree-bfs.sh $(SCRIPT)/cpp-tree-bfs
	ln -sf $(PWD)/cpp-tree-test.sh $(SCRIPT)/cpp-tree-test
	ln -sf $(PWD)/cpp-main.sh $(SCRIPT)/cpp-main
	ln -sf $(PWD)/cpp-queue.sh $(SCRIPT)/cpp-queue
	ln -sf $(PWD)/cpp-prefix-sum.sh $(SCRIPT)/cpp-prefix-sum
	ln -sf $(PWD)/cpp-two-pointer.sh $(SCRIPT)/cpp-two-pointer
	ln -sf $(PWD)/cpp-sliding-window.sh $(SCRIPT)/cpp-sliding-window
	ln -sf $(PWD)/cpp-binary-search.sh $(SCRIPT)/cpp-binary-search

rust:
	ln -sf $(PWD)/rs-test.sh $(SCRIPT)/rs-test
	ln -sf $(PWD)/rs-graph.sh $(SCRIPT)/rs-graph

snip:
	ln -sf $(PWD)/bit-ops.sh $(SCRIPT)/bit-ops

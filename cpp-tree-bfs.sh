#!/usr/bin/env bash

cat << "EOF"
void bfs(Node *root) {

    std::queue<Node*> queue;
    queue.push(root);

    while (!queue.empty()) {

        int size = queue.size();

        for (size_t i = 0; i < size; i++) {

            Node *node = queue.front();
            queue.pop();

            std::cout << node->data << std::endl;

            if (node->left) {
                queue.push(node->left);
            }

            if (node->right) {
                queue.push(node->right);
            }
        }
    }
}
EOF

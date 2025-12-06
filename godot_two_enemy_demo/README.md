# TwoEnemyAccessDemo (Godot 4)

This tiny project demonstrates **three reliable ways** to call functions on two instances of the same enemy scene:

1. **Store references when you instance** (`enemy_a`, `enemy_b`) and call methods directly.
2. **Use a group** (e.g., `enemies`) and iterate `get_tree().get_nodes_in_group("enemies")`.
3. **Use explicit NodePaths** like `"EnemyA"` and `"EnemyB"` (requires unique sibling names).

## How to run
1. Open the folder in Godot 4.
2. Run the project. You should see printed output in the console from both enemies.

## Common pitfalls this project avoids
- Calling methods **before** the nodes are ready. Use `await enemy.ready` before calling methods right after adding them as children.
- Using a single `get_node("Enemy")` when there are **multiple instances**; you'll only get one node.
- Trying to call a method on the **PackedScene** instead of the **instanced node** returned by `.instantiate()`.
- Two enemies with the **same sibling name**; name each instance uniquely or don't rely on names and use groups/references instead.
- If your enemies live under different parents/branches, ensure the **NodePath is correct** from the caller.
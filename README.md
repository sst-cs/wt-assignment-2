# Assignment 2 – Interactive Task Manager

## Objective
Build a fully functional **Task Manager** application using HTML, CSS, and JavaScript.

## Required Structure

### HTML (`index.html`)
Your page must includE the following elements with **exact IDs and classes**:

| Element | ID / Class | Description |
|---|---|---|
| Form | `id="task-form"` | Wraps the input and add button |
| Text input | `id="task-input"` | Where user types a task |
| Add button | `id="add-btn"` | Submits the form to add a task |
| Task list | `id="task-list"` | A `<ul>` that holds all task items |
| Task counter | `id="task-count"` | Shows number of active tasks, e.g. `"3 tasks left"` |
| Filter buttons | `class="filter-btn"` | Three buttons with `data-filter` attribute: `"all"`, `"active"`, `"completed"` |
| Clear button | `id="clear-completed"` | Removes all completed tasks |

Each task `<li>` in the list must have:
- Class: `task-item` (add class `completed` when the task is done)
- Attribute: `data-id` set to the task's id
- A `<span class="task-text">` containing the task text
- A `<button class="delete-btn">` containing `✕`

### CSS (`style.css`)
You must use:
- An **external CSS file** linked in your HTML
- At least **2 CSS variables** (e.g. colors, border-radius)
- **Flexbox** for layout
- A **hover effect** on at least one interactive element
- A **transition** for smooth visual change
- Completed tasks must look visually different (e.g. strikethrough, faded color)

### JavaScript (`script.js`)
Implement the following features:

1. **Add Task** – Submit the form to add a task to the list. Do not add empty/whitespace-only tasks. Clear the input after adding.
2. **Delete Task** – The `✕` button removes that task.
3. **Toggle Complete** – Clicking the task text toggles its completed state.
4. **Task Counter** – `#task-count` always shows the number of incomplete tasks as `"<n> tasks left"`.
5. **Filter Tasks** – The three filter buttons show All / Active / Completed tasks. The active filter button must have the CSS class `active`.
6. **Clear Completed** – Removes all completed tasks from the list.
7. **LocalStorage** – Tasks persist across page reloads. Use `localStorage` key: `"tasks"`.

### Task Data Format
Each task must be an object in your array:
```js
{ id: Date.now(), text: "Buy groceries", completed: false }
```

## Files to Submit
- `index.html` – your HTML
- `style.css` – your CSS
- `script.js` – your JavaScript

## Rules
- Do **not** rename the files listed above
- Use the **exact IDs, classes, and attributes** listed in this README
- The `localStorage` key must be exactly `"tasks"`

## Submission
Push your final code to your GitHub Classroom repository.

## Grading
Autograding runs automatically on every push.
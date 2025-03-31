
___
### 📖 **Getting Help**

> The _MOST_ important part of mastering tmux is checking the built-in help.

- **Show all key bindings:**  
    👉 `<prefix> ?`
    
- **Reload config after adding a new config:**  
    👉 `<prefix> :source-file ~/.tmux.conf`
    
    > Think: _“Read my configs again!”_
    > 
## 🔥 **Termination**

| For      | Command                               | Think about...                                                                                                                                                     |
| -------- | ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Panes    | 1. `<prefix> x`                       | you exit "p(l)anes" and you don't exit through windows (house window)                                                                                              |
| Windows  | 1. `<prefix> &`                       | You should "(a)end" Windows (the OS)                                                                                                                               |
| Sessions | 1. `<prefix> d`<br>and<br>2. `ctrl d` | 1. You don't "exit" or "end" sessions, you "detach" from it<br>2. if detaching isn't enough from a "control" freak then you have no choice but to _ctrl d_(estroy) |
## 🧭 **Navigation**

| For      | Command                                                                                                                           | Think about...                                                                                                                                                                                                                                                      |
| -------- | :-------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Panes    | 1. <br>`<prefix> ↑`<br>`<prefix> →`<br>`<prefix> ↓`<br>`<prefix> ←`<br>2. `<prefix o`<br>3. `<prefix> q` (_then choose a number_) | 1. Panes are 2d, so you you navigate top/left/right/down, not "previous" and "next" unlike windows<br><br><br>2. Since panes are 2d, you "cycle" (O) through panes (plates)<br>3. <br>                                                                              |
| Windows  | 1. `<prefix> n`<br>`<prefix> p`<br>2. `<prefix> 0-9`                                                                              | 1. Windows like in a house are usually **next**/**previous** to each other.<br>2.                                                                                                                                                                                   |
| Sessions | 1. `<prefix> (`<br>`<prefix> )`<br>2. `<prefix> s`                                                                                | 1. I just imagine the _(_ and _)_ graphically like me (as a stick man) getting pulled into another session so fast that I graphically look like that.<br><br>2. s => Switch to another session since you do not move through sessions, you just switch sessions<br> |

## ✏️ **Renaming**

| For       | Command                         | Think about...                                                                                                                                         |
| --------- | :------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| ~~Panes~~ | 1. `<prefix> {`<br>`<prefix> }` | 1. no renaming of panes since they're numbered BUT you can **REORDER** panes which is _similiar_ to renaming since they are listed based on order too. |
| Windows   | `<prefix> ,`                    | 1. if you use 'Windows' you can be renamed as "comma(tozed)" since you'll be as unproductive as commatozed patient                                     |
| Sessions  | `<prefix> $`                    | 1. a renamed 's'(ession) is a '$'ession                                                                                                                |
## 📋 **Listing**

| For      | Command                            | Think about...                                                                                                                                                                                                           |
| -------- | :--------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Panes    | 1. `<prefix> q`i                   | Listing is usually named after first letter of what you want to list. but `<prefix> p` is already taken, so they mirrored "p" into "q" <br>> _note: set -g display\_panes\_time 2000 sets the popout duration to 2 secs_ |
| Windows  | 1. `<prefix w`                     | 1. Listing is named after first letter so `<prefix w>` is apt                                                                                                                                                            |
| Sessions | 1. `<prefix s`<br>2. `<prefix> ls` | 1. Listing is named after first letter so `<prefix s>` is apt<br>2. "ls" -> similar to linux ls command                                                                                                                  |

## 🛠️ **Creation and Splitting**

| For      | Command                                                   | Think about...                                                                                                    |
| -------- | :-------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| Panes    | 1. `<prefix> %` (vertical)<br>2. `<prefix> "` (horizonal) | Splitting panes are graphical<br>1. in %, the 2 o's are up, and down<br>2. in " the 2 ' (quotes) are side by side |
| Windows  | 1. `<prefix> c`                                           | 1. due to reasons of the other 2, windows are the only ones that can be logically created with `<prefix> c`       |
| Sessions | 1. `<prefix> :new -s <name>`                              | 1. sessions are named so they can't be created with keyboard shortcuts.                                           |

---
## 🎥 **Resizing Panes**

| Action  | Command                 | Think about...                   |
| ------- | ----------------------- | -------------------------------- |
| Resize  | `(hold)<prefix> Arrow`  | 🔍 Resize the pane using arrows. |
| Zoom In | `<prefix> z`            | 🔎 Zoom into a pane.             |
| Balance | `<prefix> Ctrl + Space` | ⚖️ Rebalance pane sizes evenly.  |

# to-do list mvc breakout

## API:

#### display list of tasks
```ruby router.rb list```:

#### add task "feed my children" to list
```ruby router.rb add "feed my children"```

#### delete task with id 3
```ruby router.rb delete 3```

#### complete task with id 4
```ruby router.rb complete 4```

#### uncompletes (probably not a real word) task with id 1
```ruby router.rb uncomplete 1```

#### ??????
```ruby router.rb give_up```

## File Structure:<br>
├── README.md<br>
├── app<br>
│   ├── controller.rb<br>
│   ├── models<br>
│   │   ├── list.rb<br>
│   │   └── task.rb<br>
│   └── view.rb<br>
├── db<br>
│   └── tasks.csv<br>
└── router.rb<br>

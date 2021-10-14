Category.create([{title: 'Family'}, {title: 'Work'}, {title: 'Other'}])
Todo.create([
              {
                text: 'Buy milk',
                isCompleted: false,
                categoryId: 1
              },
              {
                text: 'Change engine oil before April 23',
                isCompleted: false,
                categoryId: 1
              },
              {
                text: 'Send a letter to grandmother',
                isCompleted: true,
                categoryId: 1
              },
              {
                text: 'Pay the rent',
                isCompleted: false,
                categoryId: 1
              },
              {
                text: 'Pick up shoes from repair',
                isCompleted: false,
                categoryId: 1
              },

              {
                text: 'Call the customer',
                isCompleted: true,
                categoryId: 2
              },
              {
                text: 'Send documents',
                isCompleted: true,
                categoryId: 2
              },
              {
                text: 'Fill in the report',
                isCompleted: false,
                categoryId: 2
              },

              {
                text: 'Call a friend',
                isCompleted: false,
                categoryId: 3
              },
              {
                text: 'Prepare for your trip',
                isCompleted: false,
                categoryId: 3
              },
            ])
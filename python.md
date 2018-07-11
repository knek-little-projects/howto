# JSON
from bson import json_util
import json

json.dumps(anObject, default=json_util.default)



# Logging

logging.basicConfig(level=logging.INFO,
                    format='[%(asctime)s %(module)s %(levelname)s] %(message)s',
                    datefmt='%d/%m %H:%M')


# Threading 

```python
from queue import Queue
from sys import stderr
from threading import Thread
import traceback


thread_error = None
def worker(queue: Queue):
    global thread_error
    while True:
        try:
            project = queue.get()
            scan(project)
            queue.task_done()
        except Exception as e:
            if not thread_error:
                thread_error = e
                print(traceback.format_exc(), file=stderr)
                with queue.mutex:
                    queue.queue.clear()
                    queue.all_tasks_done.notify_all()
                    queue.unfinished_tasks = 0
            return
            

queue = Queue()
for t in range(10):
    Thread(target=worker, args=(queue, ), daemon=True).start()


if tasks:
    for t in tasks:
        queue.put(t)
    queue.join()

    if thread_error:
        logging.fatal("Thread error encountered: %s" % str(thread_error))
        exit(3)
```



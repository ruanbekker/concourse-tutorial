import random
import socket

ages = [20, 22, 25, 28, 34, 36]
names = ["john", "frank", "will", "peter", "ryan"]
messages = ["alpha", "master", "beta", "lambda", "gold", "ocean", "sun"]

print({"hostname": socket.gethostname(), "name": random.choice(names), "age": random.choice(ages), "message": random.choice(messages)})

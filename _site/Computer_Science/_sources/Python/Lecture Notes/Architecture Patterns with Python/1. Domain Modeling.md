## Identity in Objects

- *Value Object*, a domain object that is uniquely identified by the data it holds.
    - Does not have a identity field (e.g., ID)
    - Often immutable
- *Entity*, a domain object uniquely identified by specific identity field(s).
    - In contrast to *Value Object*, this does have an identiy field.
    - Equality checked on the reference fields.

### How to implement Value Objects

```python
@dataclass(frozen=True)
class Position:
    lon: float
    lat: float 

assert Position(0,1) == Position(0,1)
```

### How to implement Entity
```python
@dataclass
class Person:
    ssn: str
    name: str

    def __eq__(self, other):
        return isinstance(other, type(self)) and self.ssn == other.ssn

    # Make hashable to be used in set, dict, etc.
    def __hash__(self):
        return hash(self.ssn)

assert Person("000-00-0000", "Alice") == Person("000-00-0000", "Alice")
assert Person("000-00-0000", "Alice") != Person("000-00-0001", "Alice")
```

## Function over Class objects
Take advantage of Python's multi-paradigm language. Not everything is an object. Many OO-only language creates concept like manager, builder, and factory which can be replaced with often simpler function implementations.
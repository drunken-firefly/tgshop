from schema import _Base

for t in _Base.metadata.sorted_tables:
    print(t.name)

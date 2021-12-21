class Position:
    """Class to represent a hash table position in Python3"""

    def __init__(self, key):
        self.key = key  # Save the key
        self.data = None  # Element in the table

    def __repr__(self):
        """Represent the class (developer)"""
        return str(self.key)


class HashTable:
    """Class to represent a hash table in Python3"""

    def __init__(self, maximum=101):  # To a better experience, use a prime number
        self.max = maximum  # Maximum table size
        self._hash_table = [None] * self._max  # Hash table
        self._size = 0  # Number of elements in table

    @property
    def max(self):
        """Getters to maximum table size"""
        return self._max

    @max.setter
    def max(self, maximum):
        """Setters to maximum table size"""
        if isinstance(maximum, int):
            self._max = maximum
        else:
            raise Exception("It is not a integer")

    @staticmethod
    def stringProcess(string):
        """Auxiliary method that transforms an alphanumeric element into an integer"""
        key = 0
        for char in range(len(string)):
            if string[char].isalpha():
                key += (31 * ord(string[char])) + char
            else:
                key += (31 * int(string[char])) + char
        return key

    def hashing(self, key, table_size):
        """Transforms a key in index (Division method)"""
        if (isinstance(key, str) and key.isalnum()) or isinstance(key, int):
            if isinstance(key, str):
                key = Hash.stringProcess(key)
            index = (key & int("0x7FFFFFFF", 16)) % table_size
        else:
            raise Exception("Unsupported type")
        return index

    def doubleHashing(self, index, key, count):
        """Apply a new hash function"""
        new_index = self.hashing(key, self._max-1) + 1
        return ((index + count*new_index) & int("0x7FFFFFFF", 16)) % self._max

    def reset(self):
        """Restores the hash table to its starting point(Empty)"""
        self._hash_table = [None] * self._max
        self._size = 0

    def processCollisions(self, index, key):
        """Handles collisions that happen in the hash process"""
        count = 0
        while True:
            new_index = self.doubleHashing(index, key, count)
            if self._hash_table[new_index] is None or self._hash_table[new_index].key == key:
                return new_index
            else:
                index = new_index
            count += 1

    def __setitem__(self, key, value):
        """Sets the value by the key; Ex: obj[key] = value"""
        if self._size == self._max:
            raise Exception("Hash table is full")
        index = self.hashing(key, self._max)
        if self._hash_table[index] != None:
            index = self.processCollisions(index, key)
        self._hash_table[index] = Position(key)
        self._hash_table[index].data = value
        self._size += 1

    def __getitem__(self, key):
        """Returns the value corresponding to the key; Ex: obj[key]"""
        if self._size == 0:
            raise Exception("Hash table is empty")
        index = self.hashing(key, self._max)
        if self._hash_table[index] is None:
            raise Exception(
                f"The index corresponding to the key: {key}, is empty")
        else:
            if self._hash_table[index].key == key:
                return self._hash_table[index].data
            else:
                new_index = self.processCollisions(index, key)
                if self._hash_table[new_index] is None:
                    raise Exception(
                        f"The index corresponding to the key: {key}, is empty")
                return self._hash_table[new_index].data

    def __len__(self):
        """Returns the size o hash table; Ex: len(obj)"""
        return self._size

    def __del__(self):
        """Destructor method"""

    def __str__(self):
        """Method to represent a hash table (user)"""
        return f"hash table is {self._size}/{self._max}"

    def __repr__(self):
        """Method to represent a hash table (developer)"""
        return str(self)


"""
Note: For small table sizes, the code may contain bugs
"""

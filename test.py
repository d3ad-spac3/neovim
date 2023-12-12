class Human:
    def __init__(self, name: str, age: int):
        self.name = name
        self.age = age

    @property
    def name(self) -> str:
        return self.name

    @name.setter
    def name(self, new_name: str) -> None:
        self.name = new_name

    @property
    def age(self) -> int:
        return self.age

    @age.setter
    def age(self, new_age: int) -> None:
        self.age = new_age

    def show_info(self) -> None:
        print(f"Human, Name: {self.name}, Age: {self.age}")
        # TODO: some cool
        # FIX: fix this shit!


tom = Human(name="Tom", age=23)
tom.show_info()

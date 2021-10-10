"""

With this program one can login, create or remove an account or change its

password. It stores your data in its cloud database.

---------------| IMPORTANT |-----------------

Password encryption is not added yet but will surely add in upcoming versions. So for now everything is public, please do not include any personal information about yourself in

both username or password.

"""

CMD = """

               Commands:-

  ➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖

c - Create account

l - Login account / Change password 

r - Remove account

"""

INP_FORM = """

             Input Format:-

  ➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖

Command, Username, Password, *New

       ^         ^         ^

*New Password is optional

"""

INP_EX = """

              Input Examples:-

  ➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖

- To create account:

c, james, 1234

- To login:

l, james, 1234

- To remove account

r, james, 1234

- To change password

l, james, 1234, abc123

"""

"""

---------------------------------------------

Author : OR!ON

Date   : 05/03/2019

Version: 1.6.1-20190313 © 2019 All Rights

         Reserved

---------------------------------------------

Please Upvote if you like my code \(*.*)/

"""

import json

import string

import http.client as client

import sys

sys.stdout.reconfigure(encoding="utf-16")

class Database:

    """Contains methods to read and write from database"""

    def __init__(self):

        """Initializes with name of the database"""

        self.json_host = "www.jsonblob.com"

        self.json_url = "/api/jsonBlob/a1388a24-43fb-11e9-a5d1-69a4efa84c0a"

    def read_database(self) -> dict:

        """Reads data from database and returns all the data"""

        https_connection = client.HTTPSConnection(self.json_host)

        https_connection.request('GET', self.json_url)

        return json.load(https_connection.getresponse())

    def write_database(self, new_data: dict) -> None:

        """Writes new data to the database"""

        # online

        https_connection = client.HTTPSConnection(self.json_host)

        https_connection.request('PUT', self.json_url,

                                 json.dumps(new_data))

class Account:

    """Contains various methods to create, login or remove an account."""

    def __init__(self):

        """Initializes class with methods of Database() and valid_commands."""

        self.database = Database()

        self.valid_commands = ["c", "l", "r"]

    @staticmethod

    def valid_username_length(username: str) -> bool:

        """Checks whether username length is >= 2 or not."""

        if len(username) >= 2:

            return True

        return False

    @staticmethod

    def valid_password_length(password: str) -> bool:

        """Checks whether password length is >= 4 or not."""

        if len(password) >= 4:

            return True

        return False

    @staticmethod

    def invalid_character(username: str) -> bool:

        """Checks whether username contains punctuations or not."""

        invalid_chars = string.punctuation

        if any(char in invalid_chars for char in username):

            return True

        return False

    def username_taken(self, username: str) -> bool:

        """Checks whether username is already taken or not."""

        if username in self.database.read_database():

            return True

        return False

    def same_password_as_old(self, username: str, new_password: str) -> bool:

        """Checks whether the new password is same as old or not."""

        return self.database.read_database()[username] == new_password

    def username_password_match(self, username: str, password: str) -> bool:

        """Checks whether username and password match in database."""

        if (self.username_taken(username) and

                self.database.read_database()[username] == password):

            return True

        return False

    def create_account(self, username: str, password: str) -> None:

        """Creates a new account."""

        if (self.valid_username_length(username) and

                self.valid_password_length(password)):

            if not self.invalid_character(username):

                if not self.username_taken(username):

                    old_data = self.database.read_database()

                    # adding username and password to the old data

                    old_data[username] = password

                    self.database.write_database(old_data)

                    print("✔️ Account Created!")

                else:

                    print("❌ Account Creation Failed! "

                          f"Username '{username}' already taken.")

            else:

                print("❗ Character Type Error! "

                      "Punctuation marks are not allowed in the "

                      "Username.")

        else:

            print("❗ Character Length Error! "

                  "Username & Password must be at least 2 and 4 "

                  "characters long respectively.")

    def login_account(self, username: str, password: str,

                      new_password: str = None) -> None:

        """Login to an already present account or change its password."""

        if self.username_password_match(username, password):

            if new_password is not None:

                if not self.valid_password_length(password):

                    print("❗ Password Length Error! New password must be at "

                          "least 4 characters long.")

                elif self.same_password_as_old(username, new_password):

                    print("❌ Password Change Failed! "

                          "New password can not be same as old one.")

                else:

                    old_data = self.database.read_database()

                    # updating the password in the old_data

                    old_data[username] = new_password

                    self.database.write_database(old_data)

                    print("✔️ Success! Password changed.")

            else:

                print("✔️ Login Successful!")

        else:

            print("❌ Login Failed! Username or Password is incorrect.")

    def remove_account(self, username, password) -> None:

        """Removes already present account."""

        if self.username_password_match(username, password):

            old_data = self.database.read_database()

            old_data.pop(username)

            self.database.write_database(old_data)

            print("✔️ Account Removed!")

        else:

            print("❌ Account Removal Failed! Username or Password is incorrect.")

    def account_process(self, command: str, username: str, password: str,

                        new_password: str = None) -> None:

        """Handles account creation, login and removal."""

        if command.lower() == "c":

            self.create_account(username, password)

        elif command.lower() == "l":

            self.login_account(username, password, new_password)

        elif command.lower() == "r":

            self.remove_account(username, password)

class App:

    def __init__(self):

        self.account = Account()

    @staticmethod

    def take_user_input() -> list:

        """Takes user input."""

        # taking user data

        global user_entry

        user_entry = input()

        return user_entry.split(",")

    def parse_user_input(self) -> list:

        """Removes trailing whitespaces."""

        return [item.strip() for item in self.take_user_input()]

    def handle_commands(self) -> None:

        """Handles commands given by user."""

        parsed_user_input = self.parse_user_input()

        # if first item of parsed_user_input (lowercase),

        # is in valid_commands and

        # there are either 3 or 4 items in parsed_user_input

        if (parsed_user_input[0].lower() in self.account.valid_commands and

                len(parsed_user_input) in range(3, 5)):

            # normal condition

            if len(parsed_user_input) == 3:

                command, username, password = parsed_user_input

                print(f"Username: {username}\nPassword: {password}\n")

                self.account.account_process(command, username, password)

            # in-case user wants to change its password

            else:

                command, username, password, new_password = parsed_user_input

                

                # if user does not enter l command

                if parsed_user_input[0].lower() != "l":

                    print(f"Username: {username}\nPassword: {password}\n")

                    print("❕ Warning! "

                          f"Command '{parsed_user_input[0]}' only requires "

                          f"2 entries, found (3).")

                else:

                    print(f"Username    : {username}\nPassword    : {password}\nNew Password: {new_password}\n")

                

                self.account.account_process(command, username, password,

                                             new_password)

        # if user does not enters any of command, username, password

        elif len(parsed_user_input) not in range(3, 5):

            if parsed_user_input != ['']:

                val_len = len(parsed_user_input)

                # if user forgets to put commas in the user_entry

                print("❗ Comma Error! Separate you entry with either two or three "

                      "commas, "

                      f"found ({user_entry.count(',')}).\n", INP_FORM)

            else:

                val_len = len(parsed_user_input) - 1

            print(f"❗ Value Error! Not enough values to proceed, "

                  f"required (3 or 4) found ({val_len}).\n", INP_EX)

        # if command entered by user is not valid

        elif parsed_user_input[0] not in self.account.valid_commands:

            print("❗ Command Error! Valid commands are (l/c/r) found "

                  f"({parsed_user_input[0]}).\n", CMD)

App().handle_commands()

